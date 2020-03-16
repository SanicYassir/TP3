<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TP3_ACHAMRAR_YASSIR.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <!--Overview Section-->
    <div id="overviewSection" class="Jumbotron Jumbotron-fluid">

        <div class="row text-light col-md-12 ">

            <div id="secLeft" class="col-md-6 ">
            </div>

            <div id="secRight" class="col-md-6 p-5  ">
                <label id="title">Prepare for</label>
                <h1 class="display-4">Smart City Conference</h1>
                <h3 class="display-4">2020</h3>
                <h5>Marrakech - June 1st,3rd</h5>
                <div>
                    <a href="#featuresSection" class="btn btn-light mr-1">More Info</a>
                    <a href="register.aspx" class="btn btn-light">Register Now</a>
                </div>
                <p class="lead">The event will start in : </p>


                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>


                        <asp:Label runat="server" class="display-4" ID="countDown"></asp:Label>


                    </ContentTemplate>

                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="tick" />
                    </Triggers>
                </asp:UpdatePanel>



            </div>
        </div>

    </div>



    <!--Features Section-->
    <div id="featuresSection">
        <div class="row col-md-12 ">

            <div id="Fleft" class="col-md-6 p-5">
                <h4 class="text-center">First Meet up in Marrakech</h4>
                <p class="mt-5 text-justify">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, in. Assumenda sit quisquam
                        repellat odio temporibus commodi vel ab inventore.
                </p>
                <p class="text-justify">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, accusamus officia? Non pariatur
                        itaque perspiciatis velit, dolore, reiciendis ab atque recusandae explicabo sit eos, quibusdam
                        libero id accusamus neque eligendi sed repellendus?
                </p>
            </div>

            <div id="FRight" class="col-md-6 p-4">
                <h2 class="display-3 text-info">The<br>
                    E<span class="text-warning">v</span>ent
                    <br>
                    Company</h2>
            </div>

        </div>
    </div>
    <hr>
    <div id="featuresSection2">
        <div class="row col-md-12 m-0">
            <div id="f2Left" class="col-md-6">
            </div>

            <div class="col-md-6 p-4">
                <h5 class="text-muted">Questions</h5>
                <h4>FAQ</h4>
                <!--QUESTIONS-->
                <div class="accordion">
                    <div class="card mb-2">
                        <div class="card-header">
                            <h5>
                                <span class="pointer" data-toggle="collapse" data-target="#question1">Question One
                                </span>
                            </h5>
                        </div>

                        <div id="question1" class="card collapse show">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis ea iste a
                                doloremque,
                                cumque, debitis eum vel ipsum architecto
                                aut, recusandae totam ullam aperiam. Nesciunt expedita officiis animi quam corporis
                                optio
                                inventore facilis sint
                                et nulla in, repellat debitis dolor at nisi quo, unde temporibus. Quos nisi nostrum
                                officia,
                                illo.
                            </div>
                        </div>
                    </div>

                    <div class="card mb-2">
                        <div class="card-header">
                            <h5>
                                <span class="pointer" data-toggle="collapse" data-target="#question2">Question Two
                                </span>
                            </h5>
                        </div>

                        <div id="question2" class="card collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis ea iste a
                                doloremque,
                                cumque, debitis eum vel ipsum architecto
                                aut, recusandae totam ullam aperiam. Nesciunt expedita officiis animi quam corporis
                                optio
                                inventore facilis sint
                                et nulla in, repellat debitis dolor at nisi quo, unde temporibus. Quos nisi nostrum
                                officia,
                                illo.
                            </div>
                        </div>
                    </div>

                    <div class="card mb-2">
                        <div class="card-header">
                            <h5>
                                <span class="pointer" data-toggle="collapse" data-target="#question3">Question Three
                                </span>
                            </h5>
                        </div>

                        <div id="question3" class="collapse card">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis ea iste a
                                doloremque,
                                cumque, debitis eum vel ipsum architecto
                                aut, recusandae totam ullam aperiam. Nesciunt expedita officiis animi quam corporis
                                optio
                                inventore facilis sint
                                et nulla in, repellat debitis dolor at nisi quo, unde temporibus. Quos nisi nostrum
                                officia,
                                illo.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <hr>
    <!--Gallery Section-->
    <div id="gallerySection">
        <!-- SLIDER WITH CAPTIONS -->
        <div class="row col-md-12 m-0">

            <div id="slider" class="carousel slide " data-ride="carousel">

                <ol class="carousel-indicators">
                    <li class="active" data-target="#slider" data-slide-to="0"></li>
                    <li data-target="#slider" data-slide-to="1"></li>
                    <li data-target="#slider" data-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <img class="d-block w-100" src="img/slide1.jpg" alt="First Slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Slide One</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, illo?</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/slide2.jpg" alt="Second Slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Slide Two</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, illo?</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/slide3.jpg" alt="Third Slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Slide Three</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, illo?</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CONTROLS -->
            <a href="#slider" class="carousel-control-prev" data-slide="prev">

                <span class="carousel-control-prev-icon"></span>
            </a>

            <a href="#slider" class="carousel-control-next" data-slide="next">

                <span class="carousel-control-next-icon"></span>
            </a>
        </div>

    </div>


    <!--Our Team Section-->
    <hr>

    <div id="teamSection" class="px-3">

        <div class="py-5 team3 bg-light">
            <div class="container">
                <div class="row justify-content-center mb-4">
                    <div class="col-md-7 text-center">
                        <h3 class="mb-3">Experienced & Professional Team</h3>
                        <h6 class="subtitle font-weight-normal">You can relay on our amazing features list and also our
                            customer services will be great experience for you without doubt and in no-time</h6>
                    </div>
                </div>
                <div class="row">
                    <!-- column  -->
                    <div class="col-lg-4 mb-4">
                        <!-- Row -->
                        <div class="row">
                            <div class="col-md-12">
                                <img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/team/t1.jpg"
                                    alt="wrapkit" class="img-fluid" />
                            </div>
                            <div class="col-md-12">
                                <div class="pt-2">
                                    <h5 class="mt-4 font-weight-medium mb-0">Michael Doe</h5>
                                    <h6 class="subtitle">Property Specialist</h6>
                                    <p>
                                        You can relay on our amazing features list and also our customer services will be
                                        great experience.
                                    </p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-facebook"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-twitter"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-behance"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Row -->
                    </div>
                    <!-- column  -->
                    <!-- column  -->
                    <div class="col-lg-4 mb-4">
                        <!-- Row -->
                        <div class="row">
                            <div class="col-md-12 pro-pic">
                                <img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/team/t2.jpg"
                                    alt="wrapkit" class="img-fluid" />
                            </div>
                            <div class="col-md-12">
                                <div class="pt-2">
                                    <h5 class="mt-4 font-weight-medium mb-0">Sara Albina</h5>
                                    <h6 class="subtitle">Property Specialist</h6>
                                    <p>
                                        You can relay on our amazing features list and also our customer services will be
                                        great experience.
                                    </p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-facebook"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-twitter"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-behance"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Row -->
                    </div>
                    <!-- column  -->
                    <!-- column  -->
                    <div class="col-lg-4 mb-4">
                        <!-- Row -->
                        <div class="row">
                            <div class="col-md-12 pro-pic">
                                <img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/team/t3.jpg"
                                    alt="wrapkit" class="img-fluid" />
                            </div>
                            <div class="col-md-12">
                                <div class="pt-2">
                                    <h5 class="mt-4 font-weight-medium mb-0">Jack Anderson</h5>
                                    <h6 class="subtitle">Property Specialist</h6>
                                    <p>
                                        You can relay on our amazing features list and also our customer services will be
                                        great experience.
                                    </p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-facebook"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-twitter"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="#"
                                            class="text-decoration-none d-block px-1"><i
                                                class="icon-social-behance"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Row -->
                    </div>
                    <!-- column  -->
                </div>
                <div class="row">
                    <p class="mt-4 text-center text-muted">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Pariatur eos sit nemo aliquid ratione
                        deleniti veniam adipisci autem sunt labore temporibus ipsum aliquam consequuntur, doloribus
                        praesentium nesciunt quaerat voluptatum accusamus fugiat corrupti vero. A, possimus.
                    </p>
                </div>
            </div>

        </div>



    </div>


    <!--Our Partners Section-->
    <div id="partnersSection" class="px-3">
        <div class="row px-4">
            <h4 class="col-4 text-muted">Our Partners</h4>
            <hr class="col">
        </div>
        <div class="container">
            <div class="row">

                <div class="card border-top-0 p-3 col-md-6">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        <footer>
                            <small>Source
                                <cite title="Source Title">Source Title</cite>
                            </small>
                        </footer>
                    </blockquote>
                </div>


                <div class="d-flex flex-wrap row-hl col-md-6">
                    <img class="item-hl m-2" style="width: 170px; height: 75px;" src="img/microsoft.png">
                    <img class="item-hl m-2" style="width: 140px;" src="img/anz.png">
                    <img class="item-hl m-2" style="width: 150px; height: 50px;" src="img/nokia.png">
                    <img class="item-hl m-2" style="width: 150px; height: 60px;" src="img/sony.png">
                    <img class="item-hl m-2" style="width: 120px; height: 80px;" src="img/intel.png">
                    <img class="item-hl m-2" style="width: 100px; height: 50px;" src="img/maxis.png">
                    <img class="item-hl m-2" style="width: 150px; height: 60px;" src="img/samsung.png">
                    <img class="item-hl m-2" style="width: 100px;" src="img/hp.png">
                </div>



            </div>
        </div>


    </div>


    <!--Contact And Location Section-->
    <div id="contactSection" class="container px-3 my-4">
        <h2 class="display-4 text-center">Contact And <span class="text-success">Location</span></h2>
        <hr>
        <div class="row">

            <!--Contact-->
            <div id="contact" class="col-md-4 p-4">

                <div class="form-group">

                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter Your name" MaxLength="50" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Entrez votre Nom !" ControlToValidate="txtName" Display="dynamic" ForeColor="red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="Entrer un Nom Correct!" ForeColor="red" ControlToValidate="txtName" ValidationExpression="^[A-Za-zÀ-ú]+ [A-Za-zÀ-ú]*$" Display="dynamic" ></asp:RegularExpressionValidator>

                </div>

                <div class="form-group">

                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Enter Your Email" MaxLength="50" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Entrez votre Email !" Display="dynamic" ControlToValidate="txtEmail" ForeColor="red"></asp:RequiredFieldValidator>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Entrer un Email Correct!" ForeColor="red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="dynamic" ></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control" placeholder="Entrez le titre de votre message" MaxLength="50" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ErrorMessage="Entrez le titre votre Message !" Display="dynamic" ControlToValidate="txtTitle" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group">
                    <textarea runat="server" class="form-control " name="Commentaire" id="txtCommentaire" cols="30"
                        rows="10" placeholder="Entrer votre message" maxlength="255"></textarea>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCommantaire" runat="server" ErrorMessage="Entrez votre Message !" Display="dynamic" ControlToValidate="txtCommentaire" ForeColor="red"></asp:RequiredFieldValidator>


                </div>

                <input value="Envoyer Votre Message" type="button" id="btnEnvoyer" class="btn btn-block btn-success"/>

            <%--    <asp:Button ID="btnEnvoyer" runat="server" CssClass="btn btn-block btn-success" Text="Envoyer Votre Message" />--%>


                <!-- MODAL -->
                <asp:Panel ID="Panel1" runat="server">
                     <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Confirmation</h5>
                                <button class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                               Voulez vous vraiment envoyer ces informations ?
                            </div>
                            <div class="modal-footer">
                                  <asp:Button runat="server" class="btn btn-secondary" OnClick="btnOui_Click" ID="btnOui" Text="Oui"/>
                                  <button class="btn btn-secondary" data-dismiss="modal">Non</button>
                            </div>
                        </div>
                    </div>
                </div>
                </asp:Panel>
               
                <!--End Modal-->




            </div>

            <!--Map-->
            <div id="Map" class="col-md-4">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13589.584973117306!2d-8.050794204792425!3d31.62299957960377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdafe934d23cf64f%3A0x6d002ebf12a6a0ec!2sInstitut%20Sup%C3%A9rieur%20de%20Gestion%20et%20d&#39;Informatique!5e0!3m2!1sfr!2sma!4v1581876920522!5m2!1sfr!2sma"
                    width="100%" height="100%" frameborder="0" style="border: 0;" allowfullscreen="true"></iframe>
            </div>

            <!--Info-->
            <div id="info" class="col-md-4">

                <h3 class="text-center py-4">SMART CITY
                        <br />
                    CONFERENCE 2018</h3>
                <span class="py-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque, quos fugit repellat, unde fuga? Commodi </span>
                <div class="py-2 d-flex align-items-center">
                    <i class="fas fa-3x fa-map-marker-alt  pr-4"></i>Adresse :Avenue 15,N°43 MARRAKECH
                </div>
                <div class="py-2 d-flex align-items-center">
                    <i class="fa fa-3x fa-phone mr-4"></i>Telephone :+212632747971
                </div>
                <div class="py-2 d-flex align-items-center">
                    <i class="fa fa-3x fa-envelope pr-4"></i>Email: Avenue 15,N°43 MARRAKECH
                </div>

            </div>

        </div>
    </div>

    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
    <script>

        $(document).ready(function () {
            var y = new Date();
            $('#year').text(y.getFullYear());
        }
        )


        $(window).resize(function () {
            if ($(window).width() <= 768) {
                $('#Fright').addClass('order-1');
                $('#Fleft').addClass('order-2');

            }
            else {
                $('#Fright').removeClass('order-1');
                $('#Fleft').removeClass('order-2');
            }
        })

        $('body').scrollspy({ target: '#main-nav' });

        // Add smooth scrolling
        //smooth scrolling
        $('#main-nav a,#overviewSection a').on('click', function (event) {
            if (this.hash !== '') {
                event.preventDefault();

                const hash = this.hash;

                $('html, body').animate(
                    {
                        scrollTop: $(hash).offset().top - 60
                    },
                    800
                );
            }
        });


        //Validation Coté client
        $('#btnEnvoyer').click(function () {
            if (Page_IsValid) {
                $('input[type=text],textarea').css('color', '#E1F7D5');
                $('#btnEnvoyer').attr('data-toggle', 'modal').attr('data-target', '#myModal');
            }
           else 
            {
            
             $('#btnEnvoyer').removeAttr('data-toggle', 'modal').removeAttr('data-target', '#myModal');
            }
        })
    </script>
</asp:Content>
