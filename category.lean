class category (obj : Type u) : Type (max u (v+1)) :=
(hom      : obj → obj → Type v)
(id       : Π X : obj, hom X X)
(comp     : Π {X Y Z : obj}, hom X Y → hom Y Z → hom X Z)
(id_comp' : ∀ {X Y : obj} (f : hom X Y), comp (id X) f = f . obviously)
(comp_id' : ∀ {X Y : obj} (f : hom X Y), comp f (id Y) = f . obviously)
(assoc'   : ∀ {W X Y Z : obj} (f : hom W X) (g : hom X Y) (h : hom Y Z),
            comp (comp f g) h = comp f (comp g h) . obviously)

notation `𝟙` := category.id -- type as \b1
infixr ` ≫ `:80 := category.comp -- type as \gg
infixr ` ⟶ `:10 := category.hom -- type as \h
