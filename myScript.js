document.getElementById("slanje").onclick = function(event) {
            
    var formValidate = true;
    

    var poljeTitle = document.getElementById("title");
    var title = document.getElementById("title").value;
    if (title.length < 5 || title.length > 30) {
    formValidate = false;
    poljeTitle.style.border="1px solid red";
    document.getElementById("msgTitle").style.color="red";
    document.getElementById("msgTitle").innerHTML="Naslov vijesti mora imati 5 do 30 znakova<br>";
    }
    

    var poljeAbout = document.getElementById("about");
    var about = document.getElementById("about").value;
    if (about.length < 10 || about.length > 100) {
    formValidate = false;
    poljeAbout.style.border="1px solid red";
    document.getElementById("msgAbout").style.color="red";
    document.getElementById("msgAbout").innerHTML="Kratki sadržaj vijesti mora imati 10 do 100 znakova";
    }

    var poljeContent = document.getElementById("content");
    var content = document.getElementById("content").value;
    if (content.length == 0) {
    formValidate = false;
    poljeContent.style.border="1px solid red";
    document.getElementById("msgContent").style.color="red";
    document.getElementById("msgContent").innerHTML="Tekst vijesti nesmije biti prazan<br>";
    }

    var poljeSlika = document.getElementById("photo");
    var photo = document.getElementById("photo").value;
    if (photo.length == 0) {
    formValidate = false;
    poljeSlika.style.border="1px solid red";
    document.getElementById("msgPhoto").style.color="red";
    document.getElementById("msgPhoto").innerHTML="Slika mora biti odabrana<br>";
    }

    var poljeCategory = document.getElementById("category");
    if(document.getElementById("category").selectedIndex == 0) {
    formValidate = false;
    poljeCategory.style.border="1px solid red";

    document.getElementById("msgCategory").style.color="red";
    document.getElementById("msgCategory").innerHTML="Kategorija mora biti odabrana<br>";
    }
    
    if (formValidate != true) {
    event.preventDefault();
    }
    
    };