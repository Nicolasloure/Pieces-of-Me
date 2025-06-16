text ="";
word = "";
index = 1;

page = 0;
page_limit = 0;

var cam_y = camera_get_view_y(view_camera[0]);  // ou use view_yview[0] para a posição Y da câmera
var cam_height = camera_get_view_height(view_camera[0]);  // ou use view_hview[0] para a altura da viewport

// Calcule a coordenada Y da parte inferior da tela
var bottom_y = cam_y + cam_height;