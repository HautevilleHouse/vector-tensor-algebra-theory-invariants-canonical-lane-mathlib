import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.CurvatureInvariants
import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.BridgeLemmas
import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

def ConstrainedInvariantTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_invariant_theory_endgame (A : AdmissibleClass) :
    ConstrainedInvariantTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse