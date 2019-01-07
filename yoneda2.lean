def yoneda_2 : C ⥤ ((Cᵒᵖ) ⥤ (Type v₁)) := 
{ obj := λ X,
  { obj := λ Y : C, Y ⟶ X,
    map := λ Y Y' f g, f ≫ g },
  map := λ X X' f, { app := λ Y g, g ≫ f } }
