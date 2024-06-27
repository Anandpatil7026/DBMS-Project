<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Transparent Login Form HTML CSS</title>
      <link rel="stylesheet" href="assets/login.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
   <body>
      <div class="bg-img">
         <div class="content">
            <header>Login Form</header>
            <form action="controller/usercontroller.php" method="post"  enctype="multipart/form-data">
              
               <div class="field">
                  <span class="fa fa-user"></span>
                  <input type="text" name="name" required placeholder="username">
               </div>

               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="password" name="password" class="pass-key" required placeholder="password">
                  <span class="show">SHOW</span>
               </div>
               
                  <input type="hidden" name="role" value="engg" required placeholder="username">
             

               <div class="field space">
                  <span class="fa fa-envelope"></span>
                  <input type="text" name="email"class="pass-key" required placeholder="Email">
                 
               </div>

               <div class="field space">
                  <span class="fa fa-phone"></span>
                  <input type="number" name="phonenumber"class="pass-key" required placeholder="phone number">
                
               </div>

               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="file" name="image"class="pass-key" required placeholder="profile_image">
                
               </div>

               <div class="field space">
                  <span class="fa fa-home"></span>
                  <input type="text" name="address"class="pass-key" required placeholder="address">
               
               </div>
               <div class="pass">
                  <a href="#">Forgot Password?</a>
               </div>
               <div class="field">
                  <input type="submit" name="engg" value="SIGNUP">
               </div>
            </form>
            <div class="login">
               Or login with
            </div>
            
            <div class="signup">
               Don't have account?
               <a href="login.php">Signup Now</a>
            </div>
         </div>
      </div>
      <script>
         const pass_field = document.querySelector('.pass-key');
         const showBtn = document.querySelector('.show');
         showBtn.addEventListener('click', function(){
          if(pass_field.type === "password"){
            pass_field.type = "text";
            showBtn.textContent = "HIDE";
            showBtn.style.color = "#3498db";
          }else{
            pass_field.type = "password";
            showBtn.textContent = "SHOW";
            showBtn.style.color = "#222";
          }
         });
      </script>
   </body>
</html>