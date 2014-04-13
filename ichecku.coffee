$.extend($.fn, 
	'ichecku': () ->
		el = $(this).hide()
		ickecku = $('<div class="ichecku off"><div class="circle"></div></div>')

		init = ()->
			if(el.is(':checked'))
				ickecku.removeClass('off')
				ickecku.addClass('on')

		update = () ->
			if(ickecku.is('.on'))
				el.attr('checked', 'checked')
			else
				el.removeAttr('checked')			
		ickecku.find('.circle').bind('click', ()->
			ickecku.toggleClass('on')
			update()			
		)

		ickecku.insertBefore(el)
)