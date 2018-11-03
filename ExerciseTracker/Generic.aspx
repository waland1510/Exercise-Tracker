﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Generic.aspx.cs" Inherits="ExerciseTracker.Elements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Form -->
    	<section id="main" class="wrapper">
				<div class="inner">
									<h3>Let us know what you think</h3>

									<form method="post" action="#">
										<div class="row uniform">
											<div class="6u 12u$(xsmall)">
												<input type="text" name="name" id="name" value="" placeholder="Name" />
											</div>
											<div class="6u$ 12u$(xsmall)">
												<input type="email" name="email" id="email" value="" placeholder="Email" />
											</div>
											<!-- Break -->
											<div class="12u$">
												<div class="select-wrapper">
													<select name="category" id="category">
														<option value="">- Click here to choose a category -</option>
														<option value="1">Question</option>
														<option value="1">Offer</option>
														<option value="1">Suggestion</option>
														<option value="1">Opportunity</option>
													</select>
												</div>
											</div>
											<!-- Break -->
											<div class="4u 12u$(small)">
												<input type="radio" id="priority-low" name="priority" checked>
												<label for="priority-low">Low Priority</label>
											</div>
											<div class="4u 12u$(small)">
												<input type="radio" id="priority-normal" name="priority">
												<label for="priority-normal">Normal Priority</label>
											</div>
											<div class="4u$ 12u$(small)">
												<input type="radio" id="priority-high" name="priority">
												<label for="priority-high">High Priority</label>
											</div>
											<!-- Break -->
											<div class="6u 12u$(small)">
												<input type="checkbox" id="copy" name="copy">
												<label for="copy">Email me a copy of this message</label>
											</div>
											<div class="6u$ 12u$(small)">
												<input type="checkbox" id="human" name="human" checked>
												<label for="human">I am a human and not a robot</label>
											</div>
											<!-- Break -->
											<div class="12u$">
												<textarea name="message" id="message" placeholder="Enter your message" rows="6"></textarea>
											</div>
											<!-- Break -->
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="Send Message" /></li>
													<li><input type="reset" value="Reset" class="alt" /></li>
												</ul>
											</div>
										</div>
                                        </div>
            </section>
									</form>
				

</asp:Content>