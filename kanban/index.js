
$(document).ready(function(){
    /* make .task draggable
    if it is still in the same .container on release, leave it in place
    if it is moved to another .container, remove it from the old one and add it to the new one
    */
    $('.task').draggable({
        revert: 'invalid',
        start: function(event, ui){
            $(this).addClass('dragging');
        },
        stop: function(event, ui){
            $(this).removeClass('dragging');
        }
    });

    /* make .container droppable
    if it is dropped on a .container, add the .task to that .container
    if it is dropped on a .task, move the .task to the .container
    */
    $('.container').droppable({
        drop: function(event, ui){
            var dropped = ui.draggable;
            var droppedOn = this;

            if ($(dropped).hasClass('task')){
                $(dropped).detach().css({top: 0, left: 0}).appendTo($(droppedOn));
            } else {
                $(dropped).detach().css({top: 0, left: 0}).appendTo($(droppedOn));
            }
        }
    });

    /* make .container sortable
    if it is dropped on a .container, add the .task to that .container
    if it is dropped on a .task, move the .task to the .container
    */
    $('.container').sortable({
        drop: function(event, ui){
            var dropped = ui.draggable;
            var droppedOn = this;

            if ($(dropped).hasClass('task')){
                $(dropped).detach().css({top: 0, left: 0}).appendTo($(droppedOn));
            } else {
                $(dropped).detach().css({top: 0, left: 0}).appendTo($(droppedOn));
            }
        }
    });

    //when #add button is clicked, create a new .task with the text in the input field
    //then empty the input field
    //only add the task to the .container that the button is clicked in
    //keep the input and button in the same .container and at the bottom
    $('.add').click(function(){
        var input = $('#input').val();
        var container = $(this).parent();
        $(container).append('<div class="task">' + input + '</div>');
        $('#input').val('');
    });
});
