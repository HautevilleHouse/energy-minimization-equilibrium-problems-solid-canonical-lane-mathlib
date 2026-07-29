import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.EquilibriumFromEnergy

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure ConvexityConditions (E : SolidEnergyFunctional) where
  convex : Prop
  polyconvex : Prop
  quasiconvex : Prop
  rankOneConvex : Prop
  implications : (convex → polyconvex) ∧ (polyconvex → quasiconvex) ∧ (quasiconvex → rankOneConvex)
  convexTerm : convex
  polyconvexTerm : polyconvex
  quasiconvexTerm : quasiconvex
  rankOneConvexTerm : rankOneConvex

structure ConvexityEvidence (E : SolidEnergyFunctional) (C : ConvexityConditions E) where
  convexClosed : C.convex
  polyconvexClosed : C.polyconvex
  quasiconvexClosed : C.quasiconvex
  rankOneConvexClosed : C.rankOneConvex
  implicationsClosed : C.implications

def ConvexityClosed (E : SolidEnergyFunctional) (C : ConvexityConditions E) : Prop :=
  C.convex ∧ C.polyconvex ∧ C.quasiconvex ∧ C.rankOneConvex ∧ C.implications

theorem convexity_closed_from_evidence
    (E : SolidEnergyFunctional) (C : ConvexityConditions E)
    (Ev : ConvexityEvidence E C) : ConvexityClosed E C := by
  exact And.intro Ev.convexClosed
    (And.intro Ev.polyconvexClosed
      (And.intro Ev.quasiconvexClosed
        (And.intro Ev.rankOneConvexClosed Ev.implicationsClosed)))

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse