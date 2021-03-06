package skydata.spark.benchmark.clustering

import org.apache.spark.mllib.clustering.LDAModel
import org.apache.spark.mllib.linalg.Vector
import org.apache.spark.rdd.RDD
import org.apache.spark.mllib.clustering.{DistributedLDAModel, LDA}

/**
  * Created by darnell on 17-3-3.
  */
object LatentDirichletAllocationBenchmark extends MllibUnsupervisalBenchmark[LDAModel]{


  val DOCCon = Key("DocConcentration")
  val TOPCON = Key("TopicConcentration")

  override lazy val algArgNames = Array(DOCCon, TOPCON, MAX_ITER)



  override def train(trainData: RDD[Vector]): LDAModel = {
    val data = trainData.zipWithIndex.map(_.swap).cache()

    new LDA().setDocConcentration(algArgTable(DOCCon).toDouble).
      setTopicConcentration(algArgTable(TOPCON).toDouble).
      setK(dataGenArgTable(N_CLUSTERS).toInt).
      setMaxIterations(algArgTable(MAX_ITER).toInt).
      run(data)
  }
  override def test(model: LDAModel, testData: RDD[Vector]): Unit = {}
}
