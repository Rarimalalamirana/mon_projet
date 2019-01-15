def day_trader(x)
    tab = []
 prix = x
    marge = 0
    prix_achat = 0
    prix_revient = 0
    for i in (0...prix.length)
        for j in (i...prix.length)
            if prix[j] - prix[i] > marge
                marge = prix[j] - prix[i] 
                prix_achat = i
                prix_revient = j
            end
        end
    end
    tab << prix_achat
    tab << prix_revient
    return tab 
end