input = xlsread('Data.xls');
[~,Hoax] = xlsread('Data.xls','D2:D21');
benar = 0;

disp(sprintf(' Emosi\tProvokasi\tHoax\t\t=> Hasil'))
disp(sprintf(' ==================================='))
for x=1:(size(input,1)-10)
    [sEmosi,nEmosi] = checkEmosi(input(x,1));
    [sProvokasi,nProvokasi] = checkProvokasi(input(x,2));
    [sNK,nNK] = inferensi(sEmosi,nEmosi,sProvokasi,nProvokasi);
    hasil = deffuzification(sNK,nNK);
    
    % Cek kebenaran
    if( strcmp(hasil,Hoax{x}))
        benar=benar+1;
    end
    
    %    hanya merapikan output "hasil" agar tidak acak
    if(strcmp(Hoax{x},'Ya'))
        disp(sprintf('  %d\t\t%d\t\t %s\t\t\t=> %s',input(x,1),input(x,2),Hoax{x},hasil))
    else
        disp(sprintf('  %d\t\t%d\t\t %s\t\t=> %s',input(x,1),input(x,2),Hoax{x},hasil))
    end
    %
    
end
disp(sprintf(' \n==================================='))
akurasi = benar/20 *100;
disp(sprintf('Akurasi: %d\n',akurasi))

% Cari Hoax yg nomor 21-30
cariHoax21_30
    
    
    