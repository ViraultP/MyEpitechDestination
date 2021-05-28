<template>
    <div>
        <div class="header">
            <!-- <img src="../assets/contact_plane.jpg" class="plane" alt="contact"> -->
            <div class="row">
                <div class="col-md-title">
                    <h1>Contactez - nous</h1>
                </div>
            </div>
            <div class="row">
                <div id="info" class="col-sm">
                    <h4>Adresse</h4>
                    <p>40 boulevard de la marquette</p>
                    <p>Toulouse (31 000)</p>
                </div>
                <div id="info" class="col-sm">
                   <h4>E-Mail</h4>
                    <p>toulouse@epitech.eu</p>
                </div>
                <div id="info" class="col-sm">
                   <h4>Téléphone</h4>
                    <p>01 44 08 00 15</p>
                </div>
            </div>

        </div>
        <div class="container">
            <div id="contact_dev" class="row">
                <div class="col-md-4">
                    <img src="../assets/contact2.png" class="logo" alt="contact">
                </div>
                <div id="contact_dev_title" class="col-md-8" >
                   <h1>Contactez les développeurs</h1>
                </div>
            </div>
            
            
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md" id="back">
                    <h1>Developpeurs Back-End</h1>
                    <h4>Pauline Virault</h4>
                    <p>pauline.virault@epitech.eu</p>
                    <h4>Vincent Crosnier</h4>
                    <p>vincent.crosnier@epitech.eu</p>
                    <h4>Jérôme Araspin</h4>
                    <p>jerome.araspin@epitech.eu</p>
                </div>
                <div class="col-md" id="front">
                    <h1>Developpeurs Front-End</h1>
                    <h4>Andrea Rodriguez</h4>
                    <p>andrea.rodriguez@epitech.eu</p>
                    <h4>Sarah Amar</h4>
                    <p>sarah.amar@epitech.eu</p>
                </div>
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
.header{
        background-image : url('../assets/contact_plane.jpg');
        background-size: cover;;
        background-repeat: repeat-x;
        display: block;
        margin-left: auto;
        margin-right: auto;
        width : 100%;
        height : auto;
        margin-top : 0px;
        margin-bottom : 0px;
        padding : 0px;
        z-index: -1;
}

.plane{
    width: 100%;
    height: auto;
}

.col-md-title{
     font-family: 'Bebas Neue', cursive;
    text-align: center;
    margin: 150px 0 0 0;
}

.col-md-title h1{
    font-size: 4.5em
}

#info{
    margin: 300px 0 20px 0;
    text-align: center;
}

#info p{
    font-size: 1.3em;
}
/* ********************************* */
#contact_dev h1{
     font-family: 'Bebas Neue', cursive;
     font-size: 4.2em;
     padding-top: 50px;
}

/* ********************************* */

#back{
    padding-top: 50px;
}

#back h1{
    font-family: 'Bebas Neue', cursive;
     font-size: 3.2em;
     text-align: center;
     color: #278867;
}

#back h4, p{
    text-align: center;
}


#front{
    padding-top :50px;
}

#front h1{
    font-family: 'Bebas Neue', cursive;
     font-size: 3.2em;
     text-align: center;
     color: #278867;
}

#front h4, p{
    text-align: center;
}


</style>