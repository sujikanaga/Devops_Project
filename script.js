let display = document.getElementById('display');
let buttons = Array.from(document.getElementsByClassName('btn'));

buttons.map( button => {
    button.addEventListener('click', (e) => {
        if(display.innerText === "0") {
            display.innerText = "";
        }
        switch(e.target.innerText){
            case 'C':
                display.innerText = '0';
                break;
            case '=':
                try{
                    display.innerText = eval(display.innerText);
                } catch {
                    display.innerText = "Error";
                }
                break;
            default:
                display.innerText += e.target.innerText;
        }
    });
});
