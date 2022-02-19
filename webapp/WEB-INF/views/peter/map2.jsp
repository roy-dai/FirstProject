<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>YA!夜總匯</title>
    <style>
          *{ 
            margin:0; 
            padding:0;
            } 
            .nav{ 
            background-color:#EEEEEE; 
            height:32px; 
            width:484px;
            margin-bottom: 4px;
            left: 0%;
            position: relative;
            z-index: 2;
            } 
            ul{ 
            list-style:none; 
            } 
            ul li{ 
            float:left; 
            line-height:32px; 
            text-align:center; 
            } 
            a{ 
            border-right:  #000000 1px solid;
            text-decoration:none; 
            color:#000000; 
            display:block; 
            width:120px; 
            height:32px; 
            } 
            a:hover{ 
            background-color:#666666; 
            color:#FFFFFF; 
            } 
            ul li ul li{ 
            float:none; 
            background-color:#EEEEEE; 
            } 
            ul li ul{ 
            display:none; 
            } 
            ul li ul li a:link,ul li ul li a:visited{ 
            background-color:#EEEEEE; 
            } 
            ul li ul li a:hover{ 
            background-color:#009933; 
            }
            
        body{
            background: linear-gradient(to right, #eacda3, #d6ae7b);
        }
        .place{
            border: 2px black solid;
            text-align: center;
            background-color: #f8f4a8;  
        }
        #A1{
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            width: 160px;
            height: 400px;
            position: absolute;
            left: 11%;
            top:14%;
            transform: translate(-50%, 0%);
        }      
        #A2{
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            width: 160px;
            height: 400px;
            position: absolute;
            left: 89%;
            top:14%;
            transform: translate(-50%, 0%)
        }      
        #B1{
            background: linear-gradient(to right, #fd746c, #ff9068); 
            width: 160px;
            height: 400px;
            position: absolute;
            left: 24%;
            top:14%;
            transform: translate(-50%, 0%)
        }
        #B2{
            background: linear-gradient(to right, #fd746c, #ff9068);
            width: 160px;
            height: 400px;
            position: absolute;
            left: 76%;
            top:14%;
            transform: translate(-50%, 0%)
        }
        #C{
            background: linear-gradient(to right, #fffc00, #ffffff); 
            width: 144px;
            height: 176px;
            position: absolute;
            left: 50%;
            top:48%;
            transform: translate(-50%, 0%)
        }
        #D{
            background: linear-gradient(to right, #f7971e, #ffd200);
            width: 640px;
            height: 56px;
            position: absolute;
            left: 50%;
            top:88%;
            transform: translate(-50%, 0%)
        }
        #E1{
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
            width: 160px;
            height: 400px;
            position: absolute;
            left:37%;
            top:14%;
            transform: translate(-50%, 0%)
        }
        #E2{
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
            width: 160px;
            height: 400px;
            position: absolute;
            left: 63%;
            top:13.5%;
            transform: translate(-50%, 0%)
        }
        #stage{
            background: linear-gradient(to right, #ff6600, #FFF200, #ff6600); 
            width: 390px;
            height: 32px;
            position: absolute;
            left:50%;
            transform: translate(-50%, 0%);
            line-height: -15;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            text-align: center;
        }       
        #dinning{
            background: linear-gradient(to right, #a1ffce, #faffd1);
            width: 144px;
            height: 180px;
            position: absolute;
            left:50%;
            top:13.5%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            text-align: center;
        }
        #dinning hr{
            padding-top: 8px;
        }
        #TL1{ 
            width: 64px;
            height: 29px;
            position: absolute;
            left:25%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        } 
        #TL2{ 
            width: 64px;
            height: 29px;
            position: absolute;
            left:20%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #TR4{ 
            width: 100px;
            height: 29px;
            position: absolute;
            left:90%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #TR1{ 
            width: 64px;
            height: 29px;
            position: absolute;
            left:75%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #TR2{ 
            width: 64px;
            height: 29px;
            position: absolute;
            left:80%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #TR3{ 
            width: 80px;
            height: 29px;
            position: absolute;
            left:69%;
            transform: translate(-50%, 0%);
            line-height: 0px;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #L{ 
            width: 40px;
            height: 160px;
            position: absolute;
            left:2%;
            top:50%;
            transform: translate(-50%, -50%);
            line-height: 0px;
            align-items: center;
        }
        i{
            margin: 4px;
        }
        h2{
            display : inline;
        }
        input{
            width: 80px;
            text-align: center;
            margin-bottom: 3px;
        }
        .bar1{
            width: 104px;
            padding-bottom: 8px;
            text-align: center;
            float: left;
            position: absolute;
            left: 2%;
            bottom: 3%;
            background-color:#CCFF80;
            border: #000000 1px solid;
            display: none;
            z-index: 2;
        }
        .bar2{
            width: 104px;
            padding-bottom: 8px;
            text-align: center;
            float: left;
            position: absolute;
            left: 12%;
            bottom: 3%;
            background-color:#CCFF80;
            border: #000000 1px solid;
            display: none;
            z-index: 2;
        }
        .LdivA1{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
        }
        .RdivA1{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
        }
        .LdivA2{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
        }
        .RdivA2{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
        }
        .LdivB1{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #fd746c, #ff9068);
        }
        .RdivB1{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #fd746c, #ff9068);
        }
        .LdivB2{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #fd746c, #ff9068);
        }
        .RdivB2{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #fd746c, #ff9068);
        }
        .LdivC{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #fffc00, #ffffff); 
        }
        .RdivC{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #fffc00, #ffffff); 
        }
        .LdivD{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #f7971e, #ffd200);
        }
        .RdivD{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #f7971e, #ffd200);
        }
        .LdivE1{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
        }
        .RdivE1{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
        }
        .LdivE2{
            float: left;
            border: 1PX solid black;
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
        }
        .RdivE2{
            float: right;
            border: 1PX solid black;
            background: linear-gradient(to right, #e0eafc, #cfdef3); 
        }
        .h,.w{
            float:inline-end;
            width: 32px;
        }
        .la{
            display: block;
        }
        #Intro{
        	width:384px;
        	height:56px;
        	margin:auto;
        	padding:12px;
        	left:39%;
        	top:13%;
            transform: translate(-50%, -50%);
        	position: absolute;
        	z-index: 3;
        	border: #000088 1px solid;
        	background-color:#FFFFBB;
        	border-radius: 10px;
        	text-aglin: center;
		    font-weight: 400;
		    font-size:lager;
		    display:none;
        }
    </style>
</head>
<body>
    <div>
        <div id="nav" class="nav"> 
            <ul> 
                <li><a href="#">夜市地圖</a></li> 
                <li onmouseover="showsub(this)" onmouseout="hidesub(this)"><a href="#">場地設定與模擬</a> 
                    <ul>
                        <li><a href="#" id="number">數量設定</a></li> 
                        <li><a href="#" id="size">場地大小</a></li> 
                        <li><a href="" >重新模擬</a></li> 
                    </ul> 
                </li> 
                <li onmouseover="showsub(this)" onmouseout="hidesub(this)"><a href="#">各區廠商登記數</a> 
                    <ul> 
                        <li><a href="#" id="NoA">A：</a></li> 
                        <li><a href="#" id="NoB">B：</a></li> 
                        <li><a href="#" id="NoC">C：</a></li>
                        <li><a href="#" id="NoD">D：</a></li> 
                        <li><a href="#" id="NoE">E：</a></li> 
                    </ul> 
                </li> 
                <li class="about"><a href="#"　>關於我們</a></li> 
            </ul>  
        </div> 
        		<div id="Intro">
	        		<div>
	        			我們致力於客製化的場地規劃，精采的表演安排，以及招攬全台特色美食；
	        			打造所有人的快樂回憶，輕鬆愉快的夜市之旅。<br>   			
	        		</div>
	        		<div style="margin-left:272px;">
	        			<a style="margin:auto;border:1px solid black;background:#CC6600;line-height:30px;text-align:center;height:30px;color:white;width:150px;">歡迎聯繫或贊助我們</a>
	        		</div>
        		</div>
                <div class="bar1">
                    <label >走道寬度</label>
                    <input id="WSwidth" type="text" value="20">
                    <br>
                    <label >A區攤商數量</label>
                    <input id="nTotalA" type="text" value="20">
                    <br>
                    <label >B區攤商數量</label>
                    <input id="nTotalB" type="text" value="20">
                    <br>
                    <label >C區攤商數量</label>
                    <input id="nTotalC" type="text" value="10">
                    <br>
                    <label >D區攤商數量</label>
                    <input id="nTotalD" type="text" value="10">
                    <br>
                    <label >E區攤商數量</label>
                    <input id="nTotalE" type="text" value="10">
                    <br>
                    <button id="Mockup">模擬規劃</button>
                </div>

                <div class="bar2">
                    <label class="la">A區長,寬</label>
                    <input class="h" id="hA" type="text" value="400">
                    <input class="w" id="wA" type="text" value="160">
                    <br>
                    <label class="la">B區長,寬</label>
                    <input class="h" id="hB" type="text" value="400">
                    <input class="w" id="wB" type="text" value="160">
                    <br>
                    <label class="la">C區長,寬</label>
                    <input class="h" id="hC" type="text" value="176">
                    <input class="w" id="wC" type="text" value="144">
                    <br>
                    <label class="la">D區長,寬</label>
                    <input class="h" id="hD" type="text" value="56">
                    <input class="w" id="wD" type="text" value="640">
                    <br>
                    <label class="la">E區長,寬</label>
                    <input class="h" id="hE" type="text" value="400">
                    <input class="w" id="wE" type="text" value="160">
                    <br>
                    <button id="changeInfo">確認</button>
                </div>
        <div class="outside">
            <div id="TL1" class="place">
                <i class="fas fa-restroom"></i>
            </div>
            <div id="TL2" class="place">
                <i class="fas fa-trash"></i><i class="fas fa-recycle"></i>
            </div>
            <div id="TR4" class="place">
                <i class="fas fa-car"></i><i class="fas fa-motorcycle"></i><br>
                <h4>Park</h4>
                <i class="fas fa-long-arrow-alt-up"></i>
            </div>
            <div id="TR1" class="place">
                <i class="fas fa-restroom"></i>
            </div>
            <div id="TR2" class="place">
                <i class="fas fa-trash"></i><i class="fas fa-recycle"></i>
            </div>
            <div id="TR3" class="place">
                <i class="fas fa-microphone-alt"></i><i class="fas fa-headphones-alt"></i>
                <h4>Sever</h4>
            </div>
            <div id="L" class="place">
                <i class="fas fa-bicycle"></i><br>
                <i class="fas fa-bicycle"></i><br>
                <i class="fas fa-bicycle"></i><br>
                <h4 style="padding-top: 14px;padding-bottom: 14px;">Bike</h4>
                <h4 style="padding-top: 14px;padding-bottom: 14px;">Rent</h4>
                <i class="fas fa-bicycle"></i><br>
                <i class="fas fa-bicycle"></i><br>
                <i class="fas fa-bicycle"></i><br>
            </div>
            <div id="A1" class="outter">
                <div id="ZoneA1" style="text-align: center;">
                    <h2>Zone A</h2>
                </div>
            </div>
            <div id="A2" class="outter">
                <div id="ZoneA2" style="text-align: center;">
                    <h2>Zone A</h2>
                </div>
            </div>
            <div id="B1" class="outter">
                <div id="ZoneB1" style="text-align: center;">
                    <h2>Zone B</h2>
                </div>
            </div>
            <div id="B2" class="outter">
                <div id="ZoneB2" style="text-align: center;">
                    <h2>Zone B</h2>
                </div>
            </div>
            <div id="C" class="outter">
                <div id="ZoneC" style="text-align: center;">
                    <h2>Zone C</h2>
                </div>
            </div>
            <div id="D" class="outter">
                <div id="ZoneD" style="text-align: center;">
                    <h2>Zone D</h2>
                </div>
            </div>
            <div id="E1" class="outter">
                <div id="ZoneE1" style="text-align: center;">
                    <h2>Zone E</h2>
                </div>
            </div>
            <div id="E2" class="outter">
                <div id="ZoneE2" style="text-align: center;">
                    <h2>Zone E</h2>
                </div>
            </div>
            <div id="stage">
                <i class="fas fa-music"></i>&nbsp;&nbsp;<i class="fas fa-guitar"></i>&nbsp;&nbsp;<i class="fas fa-gift"></i>&nbsp;&nbsp;
                <h2>Stage</h2>&nbsp;&nbsp;
                <i class="fas fa-hat-wizard"></i>&nbsp;&nbsp;<i class="fas fa-splotch"></i>&nbsp;&nbsp;<i class="fas fa-drum"></i>
            </div>
            <div id="dinning"><i class="fas fa-utensils"></i><h5 style="padding: 10px;">Dinning and Sitting</h5><i class="fas fa-utensils"></i><br>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <br>
                <hr>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <br>
                <hr>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <br>
                <hr>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <br>
                <hr>
                <i class="fas fa-chair" ></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <i class="fas fa-chair"></i><i class="fas fa-chair"></i><i class="fas fa-chair"></i>
                <br>
        </div>
        <a style=" position:fixed;bottom: 1%;right: 1%;text-align: center;line-height: 2.5;border: none;" href="./PETER">回前頁</a>
           
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" data-auto-replace-svg="nest"></script>
    <script>
        	window.addEventListener('load',function(){
        	let A = document.getElementById('NoA');
        	let B = document.getElementById('NoB');
        	let C = document.getElementById('NoC');
        	let D = document.getElementById('NoD');
        	let E = document.getElementById('NoE');
        	let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/getCount' />", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					console.log(xhr.responseText);
					var str  = (xhr.responseText).replace("[","");
					var str2 = str.replace("]","");
					var arr = str2.split(',');
					console.log(arr);
					A.insertAdjacentHTML('beforeend',arr[0]);
					B.insertAdjacentHTML('beforeend',arr[1]);
					C.insertAdjacentHTML('beforeend',arr[2]);
					D.insertAdjacentHTML('beforeend',arr[3]);
					E.insertAdjacentHTML('beforeend',arr[4]);
				}
			};
// 			var about = document.querySelectorAll("li.about");
// 			console.log(about);
//         	about[0].addEventListener("mouseover", mouseOver);
//         	about[0].addEventListener("mouseout", mouseOut);
//         	function  mouseOver() {
//         	  alert('123');
//         	}
//         	function mouseOut() {
//         	  alert('456');
        	  
//         	}
        })
        $(function(){
        	     	
        	$('.about').mouseenter(function(){
        		$('#Intro').fadeIn("4000")
        	})
        	
        	$('.about').mouseleave(function(){
        		$('#Intro').fadeOut("4000")
        	})
        	
            $('#number').on('click',function(){
                $('.bar1').css('display', 'block');
            })
            $('#size').on('click',function(){
                $('.bar2').css('display', 'block');
            })

            $('#changeInfo').on('click',function(){
                $('#A1').width(document.getElementById('wA').value);
                $('#A2').width(document.getElementById('wA').value);
                $('#B1').width(document.getElementById('wB').value);
                $('#B2').width(document.getElementById('wB').value);
                $('#C').width(document.getElementById('wC').value);
                $('#D').width(document.getElementById('wD').value);
                $('#E1').width(document.getElementById('wE').value);
                $('#E2').width(document.getElementById('wE').value);
                $('#A1').height(document.getElementById('hA').value);
                $('#A2').height(document.getElementById('hA').value);
                $('#B1').height(document.getElementById('hB').value);
                $('#B2').height(document.getElementById('hB').value);
                $('#C').height(document.getElementById('hC').value);
                $('#D').height(document.getElementById('hD').value);
                $('#E1').height(document.getElementById('hE').value);
                $('#E2').height(document.getElementById('hE').value);               
                $('.bar2').css('display', 'none');
            })

            $('#Mockup').on('click',function(){               
                $('#A1').css('background','none');
                $('#A2').css('background','none');
                $('#B1').css('background','none');
                $('#B2').css('background','none');
                $('#C').css('background','none');
                $('#D').css('background','none');
                $('#E1').css('background','none');
                $('#E2').css('background','none');

                let aisle = document.getElementById('WSwidth').value;
                let nTotalA = document.getElementById("nTotalA").value;
                let nTotalB = document.getElementById("nTotalB").value;
                let nTotalC = document.getElementById("nTotalC").value;
                let nTotalD = document.getElementById("nTotalD").value;
                let nTotalE = document.getElementById("nTotalE").value;
                let bd =10;
                var wA1 = $('#A1').innerWidth();
                var hA1 = $('#A1').innerHeight();
                var A1 = 'A1';
                var A2 = 'A2';
                var nA = Math.ceil(nTotalA/4);      //每排攤位數
                var shA1 = (hA1-bd*(nA-1))/nA; //扣掉邊距後除以每排攤位數
                var swA1 = (wA1-aisle)/2;
                var sshA1 = shA1-2;
                let ZoneA1 = document.getElementById("ZoneA1")
                let ZoneA2 = document.getElementById("ZoneA2")
                ZoneA1.innerHTML = Result(A1,nA,sshA1,swA1,bd);
                ZoneA2.innerHTML = Result(A2,nA,sshA1,swA1,bd);

                var wB1 = $('#B1').innerWidth();
                var hB1 = $('#B1').innerHeight();
                var B1 = 'B1';
                var B2 = 'B2';   
                var nB = Math.ceil(nTotalB/4);       
                var shB1 = (hB1-bd*(nB-1))/nB;
                var swB1 = (wB1-aisle)/2;
                var sshB1 = shB1-2;
                let ZoneB1 = document.getElementById("ZoneB1")
                let ZoneB2 = document.getElementById("ZoneB2")
                ZoneB1.innerHTML = Result(B1,nB,sshB1,swB1,bd);
                ZoneB2.innerHTML = Result(B2,nB,sshB1,swB1,bd);

                var wC = $('#C').innerWidth();
                var hC = $('#C').innerHeight();
                var C = 'C';    
                var nC = Math.ceil(nTotalC/2);      
                var shC = (hC-bd*(nC-1))/nC;
                var swC = (wC-aisle)/2;
                var sshC = shC-2;
                let ZoneC = document.getElementById("ZoneC")         
                ZoneC.innerHTML = Result(C,nC,sshC,swC,bd);

                var wD = $('#D').innerWidth();
                var hD = $('#D').innerHeight();  
                var D = 'D';  
                var nD = Math.ceil(nTotalD/2);     //每排數量 (2排)
                var shD = (hD-aisle)/2;            //每格(排)高度
                var swD = (wD-bd*(nD-1))/nD;       //每格(排)寬度
                var sshD = shD;
                var sswD = swD-2;
                let ZoneD = document.getElementById("ZoneD")         
                ZoneD.innerHTML = Result2(D,nD,shD,sswD,bd);

                var wE1 = $('#E1').innerWidth();
                var hE1 = $('#E1').innerHeight();  
                var E1 = 'E1';
                var E2 = 'E2'; 
                var nE = Math.ceil(nTotalE/4);      
                var shE1 = (hE1-bd*(nE-1))/nE;
                var swE1 = (wE1-aisle)/2;
                var sshE1 = shE1-2;
                let ZoneE1 = document.getElementById("ZoneE1")
                let ZoneE2 = document.getElementById("ZoneE2")
                ZoneE1.innerHTML = Result(E1,nE,sshE1,swE1,bd);
                ZoneE2.innerHTML = Result(E2,nE,sshE1,swE1,bd);
                $('.bar1').css('display', 'none');
            })
            function Result(char,NoPerCol,h,w,bd){
                let Str = "";
                for(i=0; i<NoPerCol; i++){
                    Str = Str + "<div class='Ldiv"+char+"' style='line-height:"+h/16+";width:"+w+"px;height:"+h+"px;margin-bottom:"+bd+"px'>左側</div><div class='Rdiv"+char+"' style='line-height:"+h/16+";width:"+w+"px;height:"+h+"px;margin-bottom:"+bd+"px'>右側</div>";
                }
                console.log(Str);
                return (Str);
            }
            function Result2(char,NoPerCol,h,w,bd){
                let Str = "";
                for(i=0; i<NoPerCol; i++){
                    Str = Str + "<div class='Ldiv"+char+"' style='line-height:"+h/16+";width:"+w+"px;height:"+h+"px;margin:"+(bd-6)+"px'>上排</div>";
                }
                for(i=0; i<NoPerCol; i++){
                    Str = Str + "<div class='Ldiv"+char+"' style='line-height:"+h/16+";width:"+w+"px;height:"+h+"px;margin:"+(bd-6)+"px'>下排</div>";
                }
                console.log(Str);
                return (Str);
            }          
        })
        function showsub(li){ 
            var submenu=li.getElementsByTagName("ul")[0]; 
            submenu.style.display="block"; 
            } 
        function hidesub(li){ 
            var submenu=li.getElementsByTagName("ul")[0]; 
            submenu.style.display="none"; 
            }
    </script>
</body>
</html>
