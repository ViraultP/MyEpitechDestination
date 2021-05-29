<template>
    <div>
    <!--  -->
        <section id="login">
            <div class="container">
                <div class="row">
                    <div class="col-md d-none d-lg-block">
                        <img src="../assets/image-register-write2.jpg" alt="register illustration">
                    </div>
                    <div class="col-md">
                        <div>
                            <h3>Créer son compte</h3>
                        </div>
                        <form action="#" method="post">
                            <input type="text" name="name" placeholder="Entrer votre nom"/>
                            <input type="text" name="name" placeholder="Entrer votre email"/>
                            <input type="text" name="password" placeholder="Entrer votre mot de passe"/>
                            <input type="text" name="password" placeholder="Confirmer votre mot de passe"/>
                            <button type="submit">Envoyer</button>
                        </form>
                    </div>
                 </div>
            </div>
        </section>
    </div>
</template>

<script>
export default {
    name: 'Test',
}
import $ from "jquery";

$(document).ready ( function () 
{
    $('#show').click ( function () {
    $('.menu').toggle("slide");
    });
});

</script>

<style scoped>

section img{

    width: 100%;
    height: auto;
    z-index: -1;
}

section h1{
    position: absolute;
}

section #contact{
    padding: 100px 0;
}

section .container{
    max-width: 1900px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    background-color: white;
    padding: 30px 10px;
    border-radius: 15px;
    box-shadow: 0 10px 50px -10px #d6d6d6
}

section .container h3{
    font-family:'Bebas Neue', cursive;
    font-size: 2em;
    text-align: center;
    
}

section .container form {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 600px;
    border: 1px solid red;
}

section .container form input{
    width: 87%;
    margin: 10px 0;
    padding: 10px;
    box-sizing: border-box;
    border: none;
    outline: none;
    border-bottom: 2px solid #e4e4ec;
    transition: 0.2s;
    margin-bottom: 60px;
}

section .container form input:hover{
    border-bottom: 2px solid #85C4AF;
}

section .container form button{
    width: 190px;
    height: 50px;
    border-radius: 8px;
    border: none;
    background-color: #85C4AF;
    color: white;
    font-weight: bold;
    font-size: 1.2em;
    cursor: pointer;
    outline: none;
    margin: 0 auto;
}

section .container form button:hover{
    border: 2px solid #85C4AF;
    background-color: transparent;
    color: #85C4AF;
}

</style>
