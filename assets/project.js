import './styles/project.scss';

// start the Stimulus application
import './bootstrap';

import $ from 'jquery';

$(document).ready(function ()
{
    console.log('Hello jquery');
});

let projectId = document.querySelector('.my-project').dataset.projectId;

console.log(projectId);