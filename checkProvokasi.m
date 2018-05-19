function [s,n] = checkProvokasi(nilai)
    if(nilai <= 46)
        s={'Low'};
        n={1};
    elseif(nilai > 46 && nilai < 50)
        s={'Low'};
        n={((50-nilai)/(50-46))};
        s={s 'Medium'};
        n={n ((nilai-46)/(50-46))};
    elseif(nilai >= 50 && nilai <= 72)
        s={'Medium'};
        n={1};
    elseif(nilai > 72 && nilai < 74)
        s={'Medium'};
        n={((74-nilai)/(74-72))};
        s={s 'High'};
        n={n ((nilai-72)/(74-72))};
    elseif(nilai >= 74 && nilai <= 86)
        s={'High'};
        n={1};
    elseif(nilai > 86 && nilai < 90)
        s={'High'};
        n={((90-nilai)/(90-86))};
        s={s 'Medium'};
        n={n ((nilai-86)/(90-86))};
    elseif(nilai>=90)
        s={'Very High'};
        n={1};
    end
end