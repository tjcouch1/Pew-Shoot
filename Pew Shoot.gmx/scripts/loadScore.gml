///loadScore()

if (file_exists(working_directory + "score.txt"))
{
    var file = file_text_open_read(working_directory + "score.txt");
    
    hScr = file_text_read_real(file);
    
    file_text_close(file);
}
