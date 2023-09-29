
do{
    let user_input=parseInt(prompt("enter your number,please"));

}while(user_input<=1)

let output ="";
let prime=true;
for(let i=2;i<=user_input;i++){
    for(let k=i+1;k<i;k++){
        if(i%k===0)
        prime=false;
    }
    if(!prime){
        output+=i+" "
    }
}
console.log("Output : "+output)
