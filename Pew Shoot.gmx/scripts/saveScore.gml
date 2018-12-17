///saveScore()

var file = file_text_open_write(working_directory + "score.txt");

file_text_write_real(file, hScr);

file_text_close(file);
