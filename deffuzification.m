function hasil = deffuzification(sNK,nNK)
    yStar = 0;
    if(size(sNK,2)==2) %Cek jumlah NK yg ada
        for i=1:2
            if(strcmp(sNK{i},'Ya'))
                yStar = yStar + (75*nNK{i});
            else
                yStar = yStar + (45*nNK{i});
            end
        end
        yStar = yStar/(nNK{1}+nNK{2});
    else
        if(strcmp(sNK{1},'Ya'))
            yStar = 75;
        else
            yStar = 45;
        end
    end
    
    if(yStar >= 75)
        hasil = 'Ya';
    else
        hasil = 'Tidak';
end