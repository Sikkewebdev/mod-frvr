document.addEventListener('DOMContentLoaded', () => {
    // Create and style the frame
    const frame = document.createElement('div');
    frame.id = 'frame2';
    frame.style.position = 'absolute';
    frame.style.top = '16%';
    frame.style.left = '30%';
    frame.style.width = '432px';
    frame.style.height = '272px';
    frame.style.backgroundColor = 'blue';
    frame.style.border = '1px solid black';
    frame.style.boxSizing = 'border-box';

    // Create and style the textarea
    const textarea = document.createElement('textarea');
    textarea.id = 'textbox5';
    textarea.style.width = '200px';
    textarea.style.height = '129px';
    textarea.style.fontSize = '14px';
    textarea.style.margin = '10px auto';
    textarea.style.display = 'block';
    textarea.style.border = '1px solid black';
    textarea.style.backgroundColor = 'white';
    textarea.style.color = 'black';
    textarea.style.boxSizing = 'border-box';

    // Append textarea to frame
    frame.appendChild(textarea);

    // Append frame to body
    document.body.appendChild(frame);

    // Optional: Making the frame draggable
    frame.addEventListener('mousedown', (e) => {
        let offsetX = e.clientX - frame.getBoundingClientRect().left;
        let offsetY = e.clientY - frame.getBoundingClientRect().top;

        function onMouseMove(e) {
            frame.style.left = `${e.clientX - offsetX}px`;
            frame.style.top = `${e.clientY - offsetY}px`;
        }

        function onMouseUp() {
            document.removeEventListener('mousemove', onMouseMove);
            document.removeEventListener('mouseup', onMouseUp);
        }

        document.addEventListener('mousemove', onMouseMove);
        document.addEventListener('mouseup', onMouseUp);
    });
});
