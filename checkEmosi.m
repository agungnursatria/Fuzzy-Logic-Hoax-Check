function [s,n] = checkEmosi(nilai)
    if(nilai <= 37)
        s={'Low'};
        n={1};
    elseif(nilai > 37 && nilai < 39)
        s={'Low'};
        n={((39-nilai)/(39-37))};
        s= {s 'Medium'};
        n= {n ((nilai-37)/(39-37))};
    elseif(nilai >= 39 && nilai <= 64)
        s={'Medium'};
        n={1};
    elseif(nilai > 64 && nilai < 66)
        s={'Medium'};
        n={((66-nilai)/(66-64))};
        s= {s 'High'};
        n= {n ((nilai-64)/(66-64))};
    elseif(nilai>=66)
        s={'High'};
        n={1};
    end
end