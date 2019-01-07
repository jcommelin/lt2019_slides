structure coverage :=
(covers   : Π (U : X), set (covering_family U))
(property : ∀ {U V : X} (g : V ⟶ U),
            ∀ f ∈ covers U, ∃ h ∈ covers V,
            ∀ Vj ∈ (h : set _), ∃ (Ui ∈ f),
            nonempty $ ((over.map g).obj Vj) ⟶ Ui)
