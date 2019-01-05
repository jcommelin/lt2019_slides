instance types : large_category (Type u) :=
{ hom     := λ a b, (a → b),
  id      := λ a, id,
  comp    := λ _ _ _ f g, g ∘ f }

---- 8< ---- 8< ---- 8< ----

variables {C : Type u₁} [𝒞 : category.{v₁} C]
include 𝒞

def yoneda : C ⥤ ((Cᵒᵖ) ⥤ (Type v₁)) := 
{ obj := λ X,
  { obj := λ Y : C, Y ⟶ X,
    map := λ Y Y' f g, f ≫ g,
    map_comp' :=
    begin
      intros X_1 Y Z f g,
      ext1, dsimp at *,
      erw [category.assoc]
    end,
    map_id' :=
    begin
      intros X_1,
      ext1, dsimp at *,
      erw [category.id_comp]
    end },
map := λ X X' f, { app := λ Y g, g ≫ f } }
