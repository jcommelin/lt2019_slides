structure functor (C : Type u₁) [category.{u₁ v₁} C]
                  (D : Type u₂) [category.{u₂ v₂} D] :
  Type (max u₁ v₁ u₂ v₂) :=
(obj       : C → D)
(map       : Π {X Y : C}, (X ⟶ Y) → ((obj X) ⟶ (obj Y)))
(map_id'   : ∀ (X : C), map (𝟙 X) = 𝟙 (obj X) . obviously)
(map_comp' : ∀ {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z),
             map (f ≫ g) = (map f) ≫ (map g) . obviously)
