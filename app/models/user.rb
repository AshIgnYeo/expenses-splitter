class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :invites, dependent: :nullify
  has_many :transfers, dependent: :destroy
  has_many :participants, dependent: :nullify
  has_many :shares, through: :participants
  has_many :events, through: :participants

  def friends
    added_friends = Invite.where(user: id, accepted: true).pluck(:friend_id)
    accepted_friends = Invite.where(friend: id, accepted: true).pluck(:user_id)
    User.where(id: added_friends + accepted_friends)
  end
end
