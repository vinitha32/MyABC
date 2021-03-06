<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        body{
           margin:0%;
        }
        .body1{
            position:relative;
                        bottom:150px;
                        left:80px;
                        width:80px;
                        height:120px;
                        border-style:solid;
                        border-width: 5px;
                        border-color: #000000;
                        border-radius:30%;
            background-color: #FFC0CB;


        }
        .face{
           position:relative;
                       bottom:30px;
                       right:20px;
                       border-style:solid;
                       border-width: 5px;
                       border-color: #000000;
                       width:110px;
                       height:90px;
                       border-radius:45%;
            background-color:#FFC0CB;
            animation-name: wobble;
            animation-duration: 1.5s;
            animation-iteration-count: infinite;
        }
        @keyframes wobble{
            0%{
                transform:rotate(-20deg);

            }
            50%{
                transform: rotate(20deg);
            }
            100%{
                transform: rotate(-20deg);
            }
        }
        .ear-left{
            width: 40px;
            height: 25px;
            background-color:#FFC0CB;
            transform: rotate(145deg);

             border-radius: 0 0 90px 90px;
             position: relative;
             bottom:15px;
             right:10px;
        }

        .ear-right{
            width: 40px;
            height: 25px;
            background-color:#FFC0CB;
            transform: rotate(-145deg);

             border-radius: 0 0 90px 90px;
             position: relative;
             bottom:40px;
             left:80px;
        }
        .eye-left{
            position: relative;
            width:28px;
            height:33px;
            background-color: #000000;
            border-radius: 50%;
            bottom:63px;
            left:72px;
            transform:rotate(-25deg);
        }
        .eye-right{
            position: relative;
            width:28px;
            height:33px;
            background-color: #000000;
            border-radius: 50%;
            bottom:30px;
            left:10px;
            transform:rotate(25deg);
        }
        .d1{
            width:10px;
            height:10px;
            top:8px;
            left:10px;
            border-radius:50%;
            background-color:#ffffff;
            position: relative;
        }
        .d2{
            width:5px;
            height:5px;
            top:11px;
            left:10px;
            border-radius:50%;
            background-color:#ffffff;
            position: relative;
        }
        .d3{
            width:10px;
            height:10px;
            top:8px;
            left:9px;
            border-radius:50%;
            background-color:#ffffff;
            position: relative;
        }
        .d4{
            width:5px;
            height:5px;
            top:11px;
            left:14px;
            border-radius:50%;
            background-color:#ffffff;
            position: relative;
        }
        .nose{
            width:15px;
            height:8px;
            border-radius: 15px;
            background-color: #000000;
            position: relative;
            bottom:65px;
            left:48px;
        }
        .hand-left{
            position:relative;
            width:25px;
            background-color: #FFC0CB;
            height:43px;
            border-radius:30px 30px 30px 30px;
            transform: rotate(90deg);
            bottom:52px;
            right:33px;
            animation-name: handsl;
            animation-duration: 1.5s;
            animation-iteration-count: infinite;


            }
            @keyframes handsl{
                0%{
                    transform: rotate(150deg);
                }
                50%{
                    transform:rotate(90deg);
                }
                100%{
                    transform: rotate(150deg);
                }
            }
        .hand-right{
            position:relative;
            width:25px;
            background-color:#FFC0CB;
            height:43px;
            border-radius:30px 30px 30px 30px;
            transform: rotate(-90deg);
            bottom:92px;
            left:89px;
            animation-name: hands2;
            animation-duration: 1.5s;
            animation-iteration-count: infinite;
        }
        @keyframes hands2{
                0%{
                    transform: rotate(-150deg);
                }
                50%{
                    transform:rotate(-90deg);
                }
                100%{
                    transform: rotate(-150deg);
                }
            }
        .leg-left{
            position:relative;
            width:17px;
            background-color: #FFC0CB;
            height:25px;
            border-radius:00px 0px 30px 30px;

            bottom:65px;
            left:15px;
        }
        .leg-right{
            position:relative;
            width:17px;
            background-color: #FFC0CB;
            height:25px;
            border-radius:00px 0px 30px 30px;

            bottom:90px;
            left:49px;
        }
        .grass{
            position: relative;
            top:600px;
            background-color:green;
            width: 100%;
            height:100%;
        }
        .bird {
          background-image: url('bird.svg');
          background-size: auto 100%;
          width: 88px;
          height: 125px;
          will-change: background-position;
        }
        @keyframes fly-cycle {
          100% {
          background-position: -900px 0;
          }
        }
        .sky{
            position: absolute;
            background-color:#191970 ;
            width:100%;
            height: 100%;
            animation-name: chnge;
            animation-duration:5s;
            animation-iteration-count: infinite;
        }
        @keyframes chnge{
            0%{
                background-color:#66ffff ;
            }
            50%{
                background-color:#191970;
            }
            100%{
                background-color:#66ffff ;
            }
        }
        .bamboo{
            position: relative;
            left:260px;
            bottom:340px;

        }
       .s1{
                   position: relative;
                   width:12px;
                   height:48px;
                   background-color:#009900;
                   bottom:-2px;

               }


               .s2{

                   position: relative;
                   width:12px;
                   height: 48px;
                   background-color:#009900;
                   bottom:-10px;

               }


               .s3{
                   position: relative;
                   width:12px;
                   bottom:-18px;
                   height: 48px;
                   background-color:#009900;

               }
               .s4{
                   position: relative;
                   width:12px;
                   height:48px;
                   bottom:-25px;
                   background-color:#009900;

               }




        .leaf1{
            position: relative;
            width: 45px; height: 45px;
              background-color:#00cc00;
              border-radius: 100px 0px;
              left:12px;
              animation-name: lf;
              animation-duration: 1.5s;
              animation-iteration-count: infinite;
        }
        .leaf2{
            position: relative;
            width: 45px; height: 45px;
              background-color:#00cc00;
              border-radius: 0px 100px 0px 100px;
              top:20px;
              right:45px;
              animation-name: lff;
              animation-duration: 1.5s;
              animation-iteration-count: infinite;

        }
        .leaf3{
            position: relative;
            width: 45px; height: 45px;
              background-color:#00cc00;
              border-radius: 100px 0px;
              top:35px;
              left:12px;
              animation-name: lf;
              animation-duration: 1.5s;
              animation-iteration-count: infinite;
        }


        @keyframes lf{
            0%{
                transform: rotate(10deg);
            }
            50%{
                transform: rotate(0deg);
                background-color:#FFC0CB;
            }
            100%{
                transform: rotate(10deg);
            }
        }
        @keyframes lff{
            0%{
                transform: rotate(-10deg);
            }
            50%{
                transform: rotate(0deg);
                background-color:#FFC0CB;
            }
            100%{
                transform: rotate(-10deg);
            }
        }

         @keyframes lb{
                    0%{
                        transform: rotate(20deg);
                    }
                    50%{
                        transform: rotate(0deg);
                        background-color:white;
                    }
                    100%{
                        transform: rotate(20deg);
                    }
                }
.sun{
            position: relative;
            left:20px;
            top:30px;
            width:80px;
            height: 80px;
            border-radius: 50%;
            background-color: #ffbf00;
            animation-name:sn;
            animation-duration:5s;
            animation-iteration-count: infinite;

        }
        @keyframes sn{
            0%{
                border-radius: 50%;
                background-color: #ffbf00;
            }
            50%{
                 background-color: #191970;
                 border-radius: 50%;
                 box-shadow: 15px 15px 0 0 white;
                 transform: rotateY(180deg) translateX(-50px);

            }
            100%{
                border-radius: 50%;
                background-color: #ffbf00;
            }
        }


    </style>
</head>
<body>
    <div class="sky">
        <div>
                           <a href="hi.jsp"><font size="8"><center>Welcome to MyABC!</font></center> </a>
                          </div>

    <div class="sun"></div>

</div>



    <div class="grass">

        <div class="body1">
            <div class="face">
                <div class="ear-left"></div>
                <div class="ear-right"></div>
                <div class="eye-right">
                    <div class="d1"></div>
                    <div class="d2"></div>
                </div>
                <div class="eye-left">
                    <div class="d3"></div>
                    <div class="d4"></div>
                </div>
                <div class="nose"></div>
            </div>
            <div class="hand-left"></div>
            <div class="hand-right"></div>
            <div class="leg-left"></div>
            <div class="leg-right"></div>
        </div>

        <div class="bamboo">
    <div class="s1">
        <div class="leaf1"></div>
        <div class="leaf2"></div>
        <div class="leaf3"></div>
        <div class="leaf4"></div>

    </div>

    <div class="s2"></div>
    <div class="s3"></div>
    <div class="s4"></div>
</div>




</body>
</html>