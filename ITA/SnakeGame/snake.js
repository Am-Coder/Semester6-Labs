
const cvs = document.getElementById("snake");
const ctx = cvs.getContext("2d");

var ag = false;
// create the unit
const box = 32;
var speed = 150
//Difficulty level increase
const diff = 10
const obst = 9
const ob = []
var obli = 1;
obl = 1
ob[0]={
    x :obst*box,
    y :obst*box
}





const ground = new Image();
ground.src = "img/ground.png";

const foodImg = new Image();
foodImg.src = "img/food.png";



let dead = new Audio();
let eat = new Audio();
let up = new Audio();
let right = new Audio();
let left = new Audio();
let down = new Audio();

dead.src = "audio/dead.mp3";
eat.src = "audio/eat.mp3";
up.src = "audio/up.mp3";
right.src = "audio/right.mp3";
left.src = "audio/left.mp3";
down.src = "audio/down.mp3";



let snake = [];

snake[0] = {
    x : 9 * box,
    y : 10 * box
};
snake[1] = {
    x : 9*box,
    y : 9*box,
}
snake[2] = {
    x : 9*box,
    y : 8*box,
}
snake[3] = {
    x : 9*box,
    y : 7*box,
}


let food = {
    x : Math.floor(Math.random()*17+1) * box,
    y : Math.floor(Math.random()*15+3) * box
}


let score = 0;



let d = "";

document.addEventListener("keydown",direction);

function direction(event){
    let key = event.keyCode;
    if( key == 37 && d != "RIGHT"){
        left.play();
        d = "LEFT";
    }else if(key == 38 && d != "DOWN"){
        d = "UP";
        up.play();
    }else if(key == 39 && d != "LEFT"){
        d = "RIGHT";
        right.play();
    }else if(key == 40 && d != "UP"){
        d = "DOWN";
        down.play();
    }
}


function collision(head,array,ob,diff,score){
    for(let i = 0; i < array.length; i++){
        if(head.x == array[i].x && head.y == array[i].y){
            return true;
        }
    }

    if( score > diff ){
        for(let i = 0; i < ob.length; i++){
            if(head.x == ob[i].x && head.y == ob[i].y){
                return true;
            }
        }   
    }
    return false;
}



function draw(speed){
    
    ctx.drawImage(ground,0,0);
    
    for( let i = 0; i < snake.length ; i++){
        ctx.fillStyle = ( i == 0 )? "blue" : "white";
        ctx.fillRect(snake[i].x,snake[i].y,box,box);
        
        ctx.strokeStyle = "red";
        ctx.strokeRect(snake[i].x,snake[i].y,box,box);
    }
    
    ctx.drawImage(foodImg, food.x, food.y);
    
    if( d!="" ){
        if( score>diff ){
            ctx.fillStyle = "green";
            for( let i = 0; i < ob.length ; i++){
                ctx.fillRect(ob[i].x,ob[i].y,box,box);
            }
            

        }
        // old head position
        let snakeX = snake[0].x;
        let snakeY = snake[0].y;
        
        // which direction
        if( d == "LEFT") snakeX -= box;
        if( d == "UP") snakeY -= box;
        if( d == "RIGHT") snakeX += box;
        if( d == "DOWN") snakeY += box;
        
        // if the snake eats the food
        if(snakeX == food.x && snakeY == food.y){
            score+=10;
            // eat.play();
                    // speed = speed-1;


            food = {
                x : Math.floor(Math.random()*17+1) * box,
                y : Math.floor(Math.random()*15+3) * box
            }
            // we don't remove the tail
            ob[obl]={
                x :(obst+obli)*box,
                y :obst*box
            }
            obl++;
            ob[obl]={
                x :(obst-obli)*box,
                y :obst*box
            }
            obl++;
            ob[obl]={
                x :obst*box,
                y :(obst+obli)*box
            }
            obl++;
            ob[obl]={
                x :obst*box,
                y :(obst-obli)*box
            }
            obl++;
            obli++;
            
            // clearInterval(game);
            // let game = setInterval(function(){draw(speed)},300*10/score);
        }else{
            // remove the tail
            
            snake.pop();
        }
        
        // add new Head
        
        let newHead = {
            x : snakeX,
            y : snakeY
        }
        
        // game over
        if(snakeX < box || snakeX > 17 * box || snakeY < 3*box || snakeY > 17*box || collision(newHead,snake,ob,diff,score)){
            clearInterval(game);
            dead.play();
        }
        

        snake.unshift(newHead);
      
    }
    ctx.fillStyle = "white";
    ctx.font = "45px Changa one";
    ctx.fillText(score,2*box,1.6*box);
 

}


var game = setInterval(function(){draw(speed)},300);


















