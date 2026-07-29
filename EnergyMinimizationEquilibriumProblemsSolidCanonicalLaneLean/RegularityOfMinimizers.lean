import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.ExistenceOfMinimizers

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure RegularityOfMinimizers (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E) where
  holderContinuity : Prop
  higherDifferentiability : Prop
  boundaryRegularity : Prop
  globalRegularity : Prop
  holderContinuityTerm : holderContinuity
  higherDifferentiabilityTerm : higherDifferentiability
  boundaryRegularityTerm : boundaryRegularity
  globalRegularityTerm : globalRegularity

structure RegularityEvidence (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E)
    (R : RegularityOfMinimizers E Ex) where
  holderContinuityClosed : R.holderContinuity
  higherDifferentiabilityClosed : R.higherDifferentiability
  boundaryRegularityClosed : R.boundaryRegularity
  globalRegularityClosed : R.globalRegularity

def RegularityClosed (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E)
    (R : RegularityOfMinimizers E Ex) : Prop :=
  R.holderContinuity ∧ R.higherDifferentiability ∧ R.boundaryRegularity ∧ R.globalRegularity

theorem regularity_closed_from_evidence
    (E : SolidEnergyFunctional) (Ex : ExistenceOfMinimizers E)
    (R : RegularityOfMinimizers E Ex) (Ev : RegularityEvidence E Ex R) :
    RegularityClosed E Ex R := by
  exact And.intro Ev.holderContinuityClosed
    (And.intro Ev.higherDifferentiabilityClosed
      (And.intro Ev.boundaryRegularityClosed Ev.globalRegularityClosed))

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse