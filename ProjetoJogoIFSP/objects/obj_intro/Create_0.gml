paginas = [
    "Em um mundo não tão distante do nosso, havia um jovem chamado John Wolfgang. Ficou órfão cedo por um motivo desconhecido e passou a ser cuidado pelo ancião de sua vila: Luk Shogun. Com ele aprendeu a carpintar, trabalhar, plantar e cuidar de sua vida...",
    "O maior sonho de John é explorar vários locais do mundo e escrever uma história sobre cada um deles.",
    "Certo dia, John dormia após uma longa tarde de trabalho, até que um alto barulho estranho o acordou."
];
pagina = 0;

full_text = paginas[0];
display_text = "";
char_index = 0;
text_speed = 3;
text_finished = false;
espera = 0;
tempo_espera = game_get_speed(gamespeed_fps) * 2;