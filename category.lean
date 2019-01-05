class category (obj : Type u) : Type (max u (v+1)) :=
(hom      : obj → obj → Type v)
(infixr ` ⟶ `:10 := hom)
(id       : Π X : obj, X ⟶ X)
(notation `𝟙` := id)
(comp     : Π {X Y Z : obj}, (X ⟶ Y) → (Y ⟶ Z) → (X ⟶ Z))
(infixr ` ≫ `:80 := comp)
(id_comp' : ∀ {X Y : obj} (f : X ⟶ Y), 𝟙 X ≫ f = f . obviously)
(comp_id' : ∀ {X Y : obj} (f : X ⟶ Y), f ≫ 𝟙 Y = f . obviously)
(assoc'   : ∀ {W X Y Z : obj} (f : W ⟶ X) (g : X ⟶ Y) (h : Y ⟶ Z),
  (f ≫ g) ≫ h = f ≫ (g ≫ h) . obviously)
