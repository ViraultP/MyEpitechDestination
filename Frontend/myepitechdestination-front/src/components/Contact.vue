<template>
    <div class="container">
        <div class="row">

            <div class="col-md">
                <h1>CONTACTEZ - NOUS</h1>
                <p class="text">
                    Contacter <a href="#">Epitech Toulouse </a> pour un problème sur le Site Web.
                </p>
                <p class="text">
                    Si vous rechercher à obtenir plus de renseignements sur votre année à l’étranger, veuillez-vous rapprocher vers l’université partenaire de votre choix <a href="#">ici</a>.
                </p>
                <div class="row">
                    <div class="col-sm">
                        <h4>Adresse</h4>
                        <p>40 boulevard de la marquette</p>
                        <p>Toulouse (31 000)</p>
                    </div>
                    <div class="col-sm">
                        <h4>E-Mail</h4>
                        <p>toulouse@epitech.eu</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm">
                        <h4>Téléphone</h4>
                        <p>01 44 08 00 15</p>
                    </div>
                </div>
            </div>

            <div class="col-md">
                <img src="../assets/phone.png" alt="Phone">
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Contact'
}
</script>

<style scoped>

body{
    background-color: red;
}
.container{
    margin-top: 20px;
    background-color: #F2F2F2;
    border-radius: 6px;
}

img{
    width: 100%;
    height: auto;
    filter: drop-shadow(0px 20px 4px #7c7b7b);
   
}

h1{
    margin-top: 50px;
    font-family: 'Bebas Neue', cursive;
    font-size: 2.9em;
    display: block;
    text-align: center;
    color: #278867;
}

h4{
    font-family: 'Bebas Neue', cursive;
}

p{
    font-weight: lighter;
    text-align: justify;
}

.text{
    padding-left: 10px;
}
.text a{
    text-decoration: none;
    color: #278867;
    font-weight: bold;
}

.col-sm{
    margin: 30px 0;
}
</style>