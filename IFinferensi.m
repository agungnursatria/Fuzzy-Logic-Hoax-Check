function [gol,n] = IFinferensi(sEmosi,nEmosi,sProvokasi,nProvokasi)
    n = min(nEmosi,nProvokasi);
    if( strcmp(sEmosi,'Low') && strcmp(sProvokasi,'Low'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'Low') && strcmp(sProvokasi,'Medium'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'Low') && strcmp(sProvokasi,'High'))
        gol='Ya';
    elseif( strcmp(sEmosi,'Low') && strcmp(sProvokasi,'Very High'))
        gol='Ya';
    elseif( strcmp(sEmosi,'Medium') && strcmp(sProvokasi,'Low'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'Medium') && strcmp(sProvokasi,'Medium'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'Medium') && strcmp(sProvokasi,'High'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'Medium') && strcmp(sProvokasi,'Very High'))
        gol='Ya';
    elseif( strcmp(sEmosi,'High') && strcmp(sProvokasi,'Low'))
        gol='Tidak';
    elseif( strcmp(sEmosi,'High') && strcmp(sProvokasi,'Medium'))
        gol='Ya';
    elseif( strcmp(sEmosi,'High') && strcmp(sProvokasi,'High'))
        gol='Ya';
    elseif( strcmp(sEmosi,'High') && strcmp(sProvokasi,'Very High'))
        gol='Ya';
    end
end