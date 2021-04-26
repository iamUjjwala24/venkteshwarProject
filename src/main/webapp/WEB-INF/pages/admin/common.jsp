  <!-- Javascripts-->
                <script src="resources/js/jquery-2.1.4.min.js"></script>
                <script src="resources/js/bootstrap.min.js"></script>
                <script src="resources/js/plugins/pace.min.js"></script>
                <script src="resources/js/main.js"></script>

                <!-- Data table plugin-->
                <script type="text/javascript" src="resources/js/plugins/jquery.dataTables.min.js"></script>
                <script type="text/javascript" src="resources/js/plugins/dataTables.bootstrap.min.js"></script>
                <script type="text/javascript">
                    $('#sampleTable').DataTable();
                </script>
                <script type="text/javascript" src="resources/js/plugins/bootstrap-notify.min.js"></script>
                <script type="text/javascript" src="resources/js/plugins/sweetalert.min.js"></script>

                <script type="text/javascript">
                    $('#demoNotify').click(function() {
                        $.notify({
                            title: "Update Complete : ",
                            message: "Something cool is just updated!",
                            icon: 'fa fa-check'
                        }, {
                            type: "info"
                        });
                    });
                    $('#demoSwal').click(function() {
                        swal({
                            title: "Are you sure?",
                            text: "You will not be able to recover this imaginary file!",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonText: "Yes, delete it!",
                            cancelButtonText: "No, cancel plx!",
                            closeOnConfirm: false,
                            closeOnCancel: false
                        }, function(isConfirm) {
                            if (isConfirm) {
                                swal("Deleted!", "Your imaginary file has been deleted.", "success");
                            } else {
                                swal("Cancelled", "Your imaginary file is safe :)", "error");
                            }
                        });
                    });
                </script>