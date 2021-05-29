<template>
    <div>
    <!--  -->
        <div class='test'>
            <h1>Contacter nous </h1>
            <img src="../assets/contact_plane.jpg" class="logo">
            <p>icones</p>
        </div>
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
.test{
    text-align: center;
}

.test img{
    width: 100%;
    height: 100px;
}

</style>
