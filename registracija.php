<!DOCTYPE html>
<html lang="de">
    <head>
        <!-- Karlo Filipčić -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">    
        <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.min.css">  
        <title>RP ONLINE</title>
    </head>

    <body>
        <header>
            <nav class="container">
                <div class="row">
                    <div class="col-lg-1"><img src="images/rp-online-logo-logo-icon-png-svg.png" alt="logo"></div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2"><a href="index.php">Home</a></div>
                    <div class="col-lg-2"><a href="sport.html">Sport</a></div>
                    <div class="col-lg-2"><a href="politik.html">Politik</a></div>
                    <div class="col-lg-1"><a href="unos.html">Unos</a></div>
                    <div class="col-lg-2"><a href="login.php">Login</a></div>
                </div>
            </nav>
        </header>
        <main>
            <section id="clanak">
                <div class="articleHeader"><h3>Registracija</h3></div>
                <article>
                    <form action="" method="POST">
                        <label for="username">Username:</label>
                        <input type="text" name="username" required>
                        <label for="ime">Ime:</label>
                        <input type="text" name="ime" required>
                        <label for="prezime">Prezime:</label>
                        <input type="text" name="prezime" required>
                        <label for="password">Lozinka:</label><br>
                        <input type="password" name="password" required><br>
                        <label for="password">Ponovite lozinku:</label><br>
                        <input type="password" name="password2" required><br>
                        <button type="submit" name="submit" style="margin:20px 0px;">Login</button>
                    </form>
               </article>
               <?php
                    include 'connect.php';
                    if (isset($_POST['submit'])){
                        $username= $_POST['username'];
                        $ime= $_POST['ime'];
                        $prezime= $_POST['prezime'];
                        $lozinka= $_POST['password'];
                        $lozinka2= $_POST['password2'];

                        

                        if($lozinka == $lozinka2){
                            $hashLozinka = password_hash($lozinka, CRYPT_BLOWFISH);
                            $sql="INSERT INTO korisnik (ime, prezime, korisnicko_ime, lozinka, razina)
                            values (?, ?, ?, ?, 0)";
                            $stmt=mysqli_stmt_init($db);
                            if (mysqli_stmt_prepare($stmt, $sql)){
                                mysqli_stmt_bind_param($stmt,'ssss',$ime,$prezime,$username,$hashLozinka);

                                mysqli_stmt_execute($stmt);
                            }
                    
                            echo "Uspješna registracija";
    
                        }else echo "Krivo unešene lozinke. Ponovite unos";

                    }
                    
                ?>
           </section>
           
        </main>
        <footer>
            <div class="footerDescription">
                <h5>© RP DIGITAL GMBH | ALLE RECHTE VORBEHALTEN</h5>
                <p>Content Management by InterRed</p>
            </div>
        </footer>

    </body>
    
        
</html>
