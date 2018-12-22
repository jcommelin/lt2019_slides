def yoneda_2 : C ⥤ ((Cᵒᵖ) ⥤ (Type v₁)) := 
{ obj := λ X,
  { obj := λ Y : C, Y ⟶ X,
    map := λ Y Y' f g, f ≫ g },
  map := λ X X' f, { app := λ Y g, g ≫ f } }

---- 8< ---- 8< ---- 8< ----

def yoneda_3 : C ⥤ ((Cᵒᵖ) ⥤ (Type v₁)) := ƛ X, ƛ Y : C, Y ⟶ X.
