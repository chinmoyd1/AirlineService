function inputFocus(i){
    if(i.value==i.defaultValue){ i.value=""; i.style.color="#B6B9BA;"; }
}
function inputBlur(i){
    if(i.value==""){ i.value=i.defaultValue; i.style.color="#B6B9BA;"; }
}
