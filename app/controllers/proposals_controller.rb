class ProposalsController < ApplicationController

    before_action :load_proposal, only: [:show, :edit, :update, :destroy]

    def index
      @proposals = Proposal.all
    end

    def show
    end

    def new
      @proposal = Proposal.new
    end

    def create
      @project = Project.find(params[:id])
      @proposal = Proposal.new(proposal_params)
      @proposal.user = current_user
      if @proposal.save
        redirect_to proposal_path(@proposal)
      else
        render "new"
      end
      raise
    end

    def edit
    end

    def update

      @proposal.update(proposal_params)
      redirect_to proposal_path(@proposal)
    end

    def destroy
      @proposal.destroy
      redirect_to proposals_path
    end

    private

    def load_proposal
      @proposal = Proposal.find(params[:id])
    end

    def proposal_params
      params.require(:proposal).permit(:pitch)
    end
  end