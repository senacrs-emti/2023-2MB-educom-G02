$(document).ready(function(){
    // oculta a resposta
    $('.respostaOculta').hide();
    // acao do clique
    $('#verRespostas').on('click', function(){
    $('.respostaOculta').show();
    });
});

