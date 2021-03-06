let discord = require('discord-rpc'),
    winprocess = require('winprocess'),
    rp_id = '398479706095091733',
    image_key = 'fl_icon';

let rpc = new discord.Client({
	  transport: 'ipc'
});

function updateLoop(time, title_old) {
  let title = winprocess.getActiveWindowName(),
      params = title.match(".+?(?= - FL Studio [0-9]?[0-9]$)");

	if (title == "FL Studio 12")
		title = "Unsaved project";

	else {
		if (!rpc || !params) {
			var pid64 = winprocess.getProcessId("FL64.exe");
			var pid32 = winprocess.getProcessId("FL.exe");
			if (pid64 == -1 && pid32 == -1)
				process.exit();
			else
				return title_old;
		}
		else
			title = params[0];
    }
	
	if (title != title_old)
		time = new Date();

    rpc.setActivity({
        details: 'Editing:',
        state: title,
        startTimestamp: time,
		largeImageKey: image_key,
        largeImageText: "FL Studio 12",
        instance: false,
    }).catch(error => {
        console.error(error)
    });
	
	return title;
}

rpc.on('ready', () => {
	console.log(`Starting with rp_id ${rp_id}`);
	setTimeout(function() {
	console.log("timeout");
	let time = new Date();
	let title = updateLoop(time, winprocess.getActiveWindowName());
	setInterval(() => {
		console.log("update");
		title = updateLoop(time, title);
	}, 15000)}, 7000);
});

rpc.login(rp_id).catch(error => {
    console.error(error)
});
