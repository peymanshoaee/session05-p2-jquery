
<script>
    var xhr=new XMLHttpRequest();


    function loadValue(){
        /*if(xhr.readyState==0 || xhr.readyState==4){
            console.log(myForm.number.value);
            xhr.open("GET","ajaxServlet?number="+myForm.number.value,true);
            xhr.onreadystatechange=callBackMethod();
            xhr.send();
        }*/
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Typical action to be performed when the document is ready:
                console.log(xhr.responseText);
                document.getElementById("result").value = xhr.responseText;
            }
        };
        xhr.open("GET", "ajaxServlet?number="+myForm.number.value, true);
        xhr.send();

    }

    /* function callBackMethod(){
         console.log(xhr.readyState)
         console.log(xhr)
         //if(xhr.readyState===4){
             var result=xhr.responseText;
             console.log(result);
             myForm.result.value=result;
         //}
     }*/
</script>

<html>
<body>
<h2>Hello World!</h2>

<form name="myForm" action="simple">
    <input type="text" name="number">
    <input type="text" name="result" id="result">
    <input type="button" value="AjaxSend" onclick="loadValue()">
</form>
</body>
</html>
