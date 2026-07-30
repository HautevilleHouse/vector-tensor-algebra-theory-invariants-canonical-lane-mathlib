import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure GraphicalCalculusPackage where
  strandType : Type u
  diagramEquivalence : Prop
  isotopyInvariance : Prop
  relationEncoding : Prop
  completeness : Prop

structure GraphicalCalculusEvidence (P : GraphicalCalculusPackage) where
  diagramEquivalenceClosed : P.diagramEquivalence
  isotopyInvarianceClosed : P.isotopyInvariance
  relationEncodingClosed : P.relationEncoding
  completenessClosed : P.completeness

def GraphicalCalculusClosed (P : GraphicalCalculusPackage) : Prop :=
  P.diagramEquivalence ∧ P.isotopyInvariance ∧ P.relationEncoding ∧ P.completeness

theorem graphical_calculus_closed_from_evidence (P : GraphicalCalculusPackage) (E : GraphicalCalculusEvidence P) : GraphicalCalculusClosed P := by
  exact And.intro E.diagramEquivalenceClosed (And.intro E.isotopyInvarianceClosed (And.intro E.relationEncodingClosed E.completenessClosed))

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse