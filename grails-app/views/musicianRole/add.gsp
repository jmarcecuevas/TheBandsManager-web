<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear rol</title>
    <meta name="layout" content="main"/>

    <asset:stylesheet src="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <asset:stylesheet src="application.css"/>

    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src="/plugins/iCheck/custom.css" />
    <asset:stylesheet src="/plugins/chosen/bootstrap-chosen.css" />
    <asset:stylesheet src="/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" />
    <asset:stylesheet src="/plugins/colorpicker/bootstrap-colorpicker.min.css" />
    <asset:stylesheet src="/plugins/cropper/cropper.min.css" />
    <asset:stylesheet src="/plugins/switchery/switchery.css" />
    <asset:stylesheet src="/plugins/jasny/jasny-bootstrap.min.css" />
    <asset:stylesheet src="/plugins/nouslider/jquery.nouislider.css" />
    <asset:stylesheet src="/plugins/datapicker/datepicker3.css" />
    <asset:stylesheet src="/plugins/ionRangeSlider/ion.rangeSlider.css" />
    <asset:stylesheet src="/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" />
    <asset:stylesheet src="/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" />
    <asset:stylesheet src="/plugins/clockpicker/clockpicker.css" />
    <asset:stylesheet src="/plugins/daterangepicker/daterangepicker-bs3.css" />
    <asset:stylesheet src="/plugins/select2/select2.min.css" />
    <asset:stylesheet src="/plugins/touchspin/jquery.bootstrap-touchspin.min.css" />
    <asset:stylesheet src="/plugins/dualListbox/bootstrap-duallistbox.min.css" />


</head>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Nuevo rol <small>Ingrese detalles.</small></h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">


                    <g:form method="post" class="form-horizontal" action="create">
                        <div class="form-group"><label class="col-sm-2 control-label">Nombre</label>
                            <div class="col-sm-10"><input type="text" name="name" class="form-control"></div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-1 control-label">Instrumento</label>
                            <br>
                            <label class="text-white">"Ins"</label>
                            <div>
                                <g:select class="chosen-select" optionKey="id" optionValue="${{it.name}}"
                                          name="instrument" from="${instruments}"/>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-white" type="reset">Cancel</button>
                                <button class="btn btn-primary" type="submit">Save changes</button>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="/jquery-3.1.1.min.js"/>
<asset:javascript src="/bootstrap.min.js"/>

<!-- Custom and plugin javascript -->
<asset:javascript src="/inspinia.js"/>
<asset:javascript src="/plugins/pace/pace.min.js"/>
<asset:javascript src="/plugins/slimscroll/jquery.slimscroll.min.js"/>

<!-- Chosen -->
<asset:javascript src="/plugins/chosen/chosen.jquery.js"/>

<!-- JSKnob -->
<asset:javascript src="/plugins/jsKnob/jquery.knob.js"/>

<!-- Input Mask-->
<asset:javascript src="/plugins/jasny/jasny-bootstrap.min.js"/>

<!-- Data picker -->
<asset:javascript src="/plugins/datapicker/bootstrap-datepicker.js"/>

<!-- NouSlider -->
<asset:javascript src="/plugins/nouslider/jquery.nouislider.min.js"/>

<!-- Switchery -->
<asset:javascript src="/plugins/switchery/switchery.js"/>

<!-- IonRangeSlider -->
<asset:javascript src="/plugins/ionRangeSlider/ion.rangeSlider.min.js"/>

<!-- iCheck -->
<asset:javascript src="/plugins/iCheck/icheck.min.js"/>

<!-- MENU -->
<asset:javascript src="/plugins/metisMenu/jquery.metisMenu.js"/>

<!-- Color picker -->
<asset:javascript src="/plugins/colorpicker/bootstrap-colorpicker.min.js"/>

<!-- Clock picker -->
<asset:javascript src="/plugins/clockpicker/clockpicker.js"/>

<!-- Image cropper -->
<asset:javascript src="/plugins/cropper/cropper.min.js"/>

<!-- Date range use moment.js same as full calendar plugin -->
<asset:javascript src="/plugins/fullcalendar/moment.min.js"/>

<!-- Date range picker -->
<asset:javascript src="/plugins/daterangepicker/daterangepicker.js"/>

<!-- Select2 -->
<asset:javascript src="/plugins/select2/select2.full.min.js"/>

<!-- TouchSpin -->
<asset:javascript src="/plugins/touchspin/jquery.bootstrap-touchspin.min.js"/>

<!-- Tags Input -->
<asset:javascript src="/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"/>

<!-- Dual Listbox -->
<asset:javascript src="/plugins/dualListbox/jquery.bootstrap-duallistbox.js"/>

<script>
    $(document).ready(function(){

        $('.tagsinput').tagsinput({
            tagClass: 'label label-primary'
        });

        var $image = $(".image-crop > img")
        $($image).cropper({
            aspectRatio: 1.618,
            preview: ".img-preview",
            done: function(data) {
                // Output the result data for cropping image.
            }
        });

        var $inputImage = $("#inputImage");
        if (window.FileReader) {
            $inputImage.change(function() {
                var fileReader = new FileReader(),
                    files = this.files,
                    file;

                if (!files.length) {
                    return;
                }

                file = files[0];

                if (/^image\/\w+$/.test(file.type)) {
                    fileReader.readAsDataURL(file);
                    fileReader.onload = function () {
                        $inputImage.val("");
                        $image.cropper("reset", true).cropper("replace", this.result);
                    };
                } else {
                    showMessage("Please choose an image file.");
                }
            });
        } else {
            $inputImage.addClass("hide");
        }

        $("#download").click(function() {
            window.open($image.cropper("getDataURL"));
        });

        $("#zoomIn").click(function() {
            $image.cropper("zoom", 0.1);
        });

        $("#zoomOut").click(function() {
            $image.cropper("zoom", -0.1);
        });

        $("#rotateLeft").click(function() {
            $image.cropper("rotate", 45);
        });

        $("#rotateRight").click(function() {
            $image.cropper("rotate", -45);
        });

        $("#setDrag").click(function() {
            $image.cropper("setDragMode", "crop");
        });

        $('#data_1 .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

        $('#data_2 .input-group.date').datepicker({
            startView: 1,
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true,
            format: "dd/mm/yyyy"
        });

        $('#data_3 .input-group.date').datepicker({
            startView: 2,
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        $('#data_4 .input-group.date').datepicker({
            minViewMode: 1,
            keyboardNavigation: false,
            forceParse: false,
            forceParse: false,
            autoclose: true,
            todayHighlight: true
        });

        $('#data_5 .input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        var elem = document.querySelector('.js-switch');
        var switchery = new Switchery(elem, { color: '#1AB394' });

        var elem_2 = document.querySelector('.js-switch_2');
        var switchery_2 = new Switchery(elem_2, { color: '#ED5565' });

        var elem_3 = document.querySelector('.js-switch_3');
        var switchery_3 = new Switchery(elem_3, { color: '#1AB394' });

        var elem_4 = document.querySelector('.js-switch_4');
        var switchery_4 = new Switchery(elem_4, { color: '#f8ac59' });
        switchery_4.disable();

        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green'
        });

        $('.demo1').colorpicker();

        var divStyle = $('.back-change')[0].style;
        $('#demo_apidemo').colorpicker({
            color: divStyle.backgroundColor
        }).on('changeColor', function(ev) {
            divStyle.backgroundColor = ev.color.toHex();
        });

        $('.clockpicker').clockpicker();

        $('input[name="daterange"]').daterangepicker();

        $('#reportrange span')(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

        $('#reportrange').daterangepicker({
            format: 'MM/DD/YYYY',
            startDate: moment().subtract(29, 'days'),
            endDate: moment(),
            minDate: '01/01/2012',
            maxDate: '12/31/2015',
            dateLimit: { days: 60 },
            showDropdowns: true,
            showWeekNumbers: true,
            timePicker: false,
            timePickerIncrement: 1,
            timePicker12Hour: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            opens: 'right',
            drops: 'down',
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-primary',
            cancelClass: 'btn-default',
            separator: ' to ',
            locale: {
                applyLabel: 'Submit',
                cancelLabel: 'Cancel',
                fromLabel: 'From',
                toLabel: 'To',
                customRangeLabel: 'Custom',
                daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
                monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                firstDay: 1
            }
        }, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $('#reportrange span')(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        });

        $(".select2_demo_1").select2();
        $(".select2_demo_2").select2();
        $(".select2_demo_3").select2({
            placeholder: "Select a state",
            allowClear: true
        });


        $(".touchspin1").TouchSpin({
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $(".touchspin2").TouchSpin({
            min: 0,
            max: 100,
            step: 0.1,
            decimals: 2,
            boostat: 5,
            maxboostedstep: 10,
            postfix: '%',
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $(".touchspin3").TouchSpin({
            verticalbuttons: true,
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $('.dual_select').bootstrapDualListbox({
            selectorMinimalHeight: 160
        });


    });

    $('.chosen-select').chosen({width: "100%"});

    $("#ionrange_1").ionRangeSlider({
        min: 0,
        max: 5000,
        type: 'double',
        prefix: "$",
        maxPostfix: "+",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_2").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " carats",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_3").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        postfix: "°",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_4").ionRangeSlider({
        values: [
            "January", "February", "March",
            "April", "May", "June",
            "July", "August", "September",
            "October", "November", "December"
        ],
        type: 'single',
        hasGrid: true
    });

    $("#ionrange_5").ionRangeSlider({
        min: 10000,
        max: 100000,
        step: 100,
        postfix: " km",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });

    $(".dial").knob();

    var basic_slider = document.getElementById('basic_slider');

    noUiSlider.create(basic_slider, {
        start: 40,
        behaviour: 'tap',
        connect: 'upper',
        range: {
            'min':  20,
            'max':  80
        }
    });

    var range_slider = document.getElementById('range_slider');

    noUiSlider.create(range_slider, {
        start: [ 40, 60 ],
        behaviour: 'drag',
        connect: true,
        range: {
            'min':  20,
            'max':  80
        }
    });

    var drag_fixed = document.getElementById('drag-fixed');

    noUiSlider.create(drag_fixed, {
        start: [ 40, 60 ],
        behaviour: 'drag-fixed',
        connect: true,
        range: {
            'min':  20,
            'max':  80
        }
    });

</script>

</body>
</html>


