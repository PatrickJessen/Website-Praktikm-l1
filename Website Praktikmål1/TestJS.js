const list_item = document.querySelectorAll('.drop');
const lists = document.querySelectorAll('.drops');

let draggedItem = null;

for (let i = 0; i < list_item.length; i++) {
	const item = list_item[i];

	item.addEventListener('dragstart', function () {
		draggedItem = item;
		setTimeout(function () {
			item.style.display = 'none';
			console.log("Item is picked up");
		}, 0)
	});

	item.addEventListener('dragend', function () {
		setTimeout(function () {
			draggedItem.style.display = 'block';
			draggedItem = null;
			console.log("Droped");
		}, 0);
	})

	for (let j = 0; j < lists.length; j++) {
		const list = lists[j];

		list.addEventListener('dragover', function (e) {
			e.preventDefault();
		});

		list.addEventListener('dragenter', function (e) {
			e.preventDefault();
		});

		list.addEventListener('dragleave', function (e) {
		});

		list.addEventListener('drop', function (e) {
			this.append(draggedItem);
		});
	}
}
