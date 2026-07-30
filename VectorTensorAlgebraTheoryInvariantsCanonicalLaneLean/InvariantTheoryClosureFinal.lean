import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.SecondFundamentalTheoremPackages
import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

def ConstrainedInvariantTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_invariant_theory_endgame (A : AdmissibleClass) : ConstrainedInvariantTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse