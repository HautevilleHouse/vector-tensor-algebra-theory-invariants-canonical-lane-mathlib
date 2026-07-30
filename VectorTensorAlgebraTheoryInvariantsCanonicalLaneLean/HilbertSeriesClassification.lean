import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure HilbertSeriesClassificationPackage where
  generatingFunction : Prop
  rationalSeries : Prop
  poleStructure : Prop
  classificationComplete : Prop

structure HilbertSeriesClassificationEvidence
    (H : HilbertSeriesClassificationPackage) where
  generatingFunctionClosed : H.generatingFunction
  rationalSeriesClosed : H.rationalSeries
  poleStructureClosed : H.poleStructure
  classificationCompleteClosed : H.classificationComplete

def HilbertSeriesClassificationClosed
    (H : HilbertSeriesClassificationPackage) : Prop :=
  H.generatingFunction ∧ H.rationalSeries ∧
  H.poleStructure ∧ H.classificationComplete

theorem hilbert_series_classification_closed_from_evidence
    (H : HilbertSeriesClassificationPackage)
    (E : HilbertSeriesClassificationEvidence H) :
    HilbertSeriesClassificationClosed H := by
  exact And.intro E.generatingFunctionClosed
    (And.intro E.rationalSeriesClosed
      (And.intro E.poleStructureClosed
        E.classificationCompleteClosed))

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse