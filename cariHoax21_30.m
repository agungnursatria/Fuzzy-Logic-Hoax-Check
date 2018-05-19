input = xlsread('Data.xls');

disp(sprintf(' Emosi\tProvokasi\t\t=> Hoax'))
disp(sprintf(' ==================================='))
for x=21:size(input,1)
    [sEmosi,nEmosi] = checkEmosi(input(x,1));
    [sProvokasi,nProvokasi] = checkProvokasi(input(x,2));
    [sNK,nNK] = inferensi(sEmosi,nEmosi,sProvokasi,nProvokasi);
    hasil = deffuzification(sNK,nNK);
    
    %    hanya merapikan output "hasil" agar tidak acak
    if(strcmp(hasil,'Ya'))
        disp(sprintf('  %d\t\t%d\t\t\t=> %s',input(x,1),input(x,2),hasil))
    else
        disp(sprintf('  %d\t\t%d\t\t\t=> %s',input(x,1),input(x,2),hasil))
    end
    %
    
end
disp(sprintf(' ===================================\n'))

    