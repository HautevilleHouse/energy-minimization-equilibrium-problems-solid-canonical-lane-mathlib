import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.ConvexityAndPolyconvexity

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure ExistenceOfMinimizers (E : SolidEnergyFunctional) where
  directMethod : Prop
  weakLowerSemicontinuityUsed : Prop
  coercivityUsed : Prop
  existenceConclusion : Prop
  directMethodTerm : directMethod
  weakLowerSemicontinuityUsedTerm : weakLowerSemicontinuityUsed
  coercivityUsedTerm : coercivityUsed
  existenceConclusionTerm : existenceConclusion

structure ExistenceEvidence (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E) where
  directMethodClosed : Ex.directMethod
  weakLowerSemicontinuityUsedClosed : Ex.weakLowerSemicontinuityUsed
  coercivityUsedClosed : Ex.coercivityUsed
  existenceConclusionClosed : Ex.existenceConclusion

def ExistenceClosed (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E) : Prop :=
  Ex.directMethod ∧ Ex.weakLowerSemicontinuityUsed ∧ Ex.coercivityUsed ∧ Ex.existenceConclusion

theorem existence_closed_from_evidence
    (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E)
    (Ev : ExistenceEvidence E Ex) : ExistenceClosed E Ex := by
  exact And.intro Ev.directMethodClosed
    (And.intro Ev.weakLowerSemicontinuityUsedClosed
      (And.intro Ev.coercivityUsedClosed Ev.existenceConclusionClosed))

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse