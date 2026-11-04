document.getElementById('leftTurn').addEventListener('click', function() {
    fetch(`https://${GetParentResourceName()}/leftturn`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
    });
});

document.getElementById('rightTurn').addEventListener('click', function() {
    fetch(`https://${GetParentResourceName()}/rightturn`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
    });
});
