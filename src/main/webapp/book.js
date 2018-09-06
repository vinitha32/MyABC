var pages = [
    { id: 'A', color: 'red' },
    { id: 'B', color: 'blue' },
    { id: 'C', color: 'green' },
    { id: 'D', color: 'orange' },
    { id: 'E', color: 'maroon' },
    { id: 'F', color: 'pink' },
    { id: 'G', color: 'purple' },
    { id: 'H', color: 'red' },
    { id: 'I', color: 'blue' },
    { id: 'J', color: 'green' }

];

var idx = 0,
    is_turning = false;

$('.btns button').click (function(){

	turn($(this).attr('class'));
});

function turn(direction) {
    
    if (is_turning)
        return;
    
    if (direction != 'next' && direction != 'prev')
        return;
    
    var is_next = (direction == 'next'),
    	new_left_data = is_next ? pages[idx + 2] : pages[idx - 2],
        new_right_data = is_next ? pages[idx + 3] : pages[idx - 1];
    
    if (!new_left_data && !new_right_data)
        return;
    
    is_turning = true;

    var $cur_left = $('.book .current.left.page'),
        $cur_right = $('.book .current.right.page'),
    	$new_left = $('<div class="left page ' + direction + '" />'),
        $new_right = $('<div class="right page ' + direction + '" />');
    
    if (new_left_data) {
        $new_left.addClass(new_left_data.color);
        $new_left.html(new_left_data.id);
    }
    
    if (new_right_data) {
        $new_right.addClass(new_right_data.color); 
        $new_right.html(new_right_data.id);
    }  
    
    $('.book').append($new_left);
    $('.book').append($new_right);
    
    $cur_left.addClass('to_remove');
    $cur_right.addClass('to_remove');
    
    setTimeout(function(){
        if (is_next) {
            $cur_right.addClass('turn');
            $new_left.addClass('turn');
        }
        else {
            $cur_left.addClass('turn');
            $new_right.addClass('turn');
        }
        
        $new_left.addClass('current');
        $new_right.addClass('current');
        
    }, 50);
    
    setTimeout(function(){
        $('.book .page.to_remove').remove();
        $('.book .page').removeClass('turn next prev'); 
        is_turning = false;        
    }, 800);
    
    idx = is_next ? (idx + 2) : (idx - 2);
}

