if (global.currentVolume != global.volume) {
	global.currentVolume = global.volume
	
	var num = audio_get_listener_count();
	for (var i = 0; i < num; i+=1)
	{
			var info = audio_get_listener_info(i);
			var ind = info [? "index"];
			audio_set_master_gain(info[? "index"], global.currentVolume/10)
	}

}