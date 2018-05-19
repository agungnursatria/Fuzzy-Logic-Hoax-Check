function [sNK,nNK] = inferensi(sEmosi,nEmosi,sProvokasi,nProvokasi)
    counterjumlahNK = 0;
    for a=1:size(sEmosi,2)
        for b=1:size(sProvokasi,2)
            [s,n] = IFinferensi(sEmosi{a},nEmosi{a},sProvokasi{b},nProvokasi{b});
            if(counterjumlahNK > 0) 
                  if(strcmp(sNK,s) == 1)
                     nNK = max(nNK,n);
                  else
                     if(counterjumlahNK ==1)                             
                         sNK = [sNK s];
                         nNK = [nNK n];
                         counterjumlahNK= counterjumlahNK + 1;
                     else
                         nNK{2} = max(nNK{2},n);
                     end
                  end
            else
                sNK = {s};
                nNK = {n};
                counterjumlahNK = 1;
            end
        end
    end        
end