<?php
$DB = new MySQLHelper();
$data = $DB->callProcedure('p_ch_dm_slider_find_vitri(?)',['trangchu']);
//echo "<pre>";
//print_r($data);
?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
	  <?php
		for($i=0; $i< count($data);$i++){
			$dong = $data[$i];
	  ?>
      <li data-target="#myCarousel" data-slide-to="<?=$i?>" class="active"></li>
	  <?php
		}
	  ?>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
	   <?php
		for($i=0; $i< count($data);$i++){
			$dong = $data[$i];
	  ?>
      <div class="item <?=$i==0?"active":""?>">
        <img src="media/upload_tgdd/slider/<?=$dong['image_url']?>"  style="width:100%;">
		<div class="carousel-caption">
          <h3><?=$dong['tieude']?></h3>
          <p></p>
        </div>
      </div>
	 <?php
		}
	  ?>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>