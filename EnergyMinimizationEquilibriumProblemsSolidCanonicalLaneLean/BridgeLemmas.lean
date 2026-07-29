import canonicalLaneMathlib.AdmissibleClass
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure AdmittedObject where
  admit : Prop

def bridgeClosed (O : AdmittedObject) : Prop :=
  O.admit

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A.object := by
  exact A.object.admit

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse