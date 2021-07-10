$('body').imagesLoaded(function() {
		$('.js__masonry').GridHorizontal({
			minWidth: 400,
			maxRowHeight: 350,
			gutter: 5,
		});
	});

$(function() {

	// // init Isotope
	// var $grid = $('.js__masonry').isotope({
	//   itemSelector: '.js__masonry-item',
	//   layoutMode: 'masonry',
	// });
	// layout Isotope after each image loads
	// $grid.imagesLoaded().progress( function() {
	//   $grid.isotope('layout');


  	$('.js__masonry').magnificPopup({
	  	delegate: 'a',
		type: 'image',
		gallery:{
			enabled: true
		}
	});
	// });


})
