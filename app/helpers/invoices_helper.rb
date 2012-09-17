module InvoicesHelper
    def display_purchase(invoice)
      unless invoice.purchase.nil?
        link_to invoice.purchase.description, invoice.purchase
      else
        "(no purchase set)"
      end
    end
end
